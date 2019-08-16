/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.Message;
import fr.solutec.bean.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author esic
 */
public class MessageDao {
    public static List<Message> getByUser(User u) throws SQLException {
        List<Message> result = new ArrayList<>();
        String id = Integer.toString(u.getId());
        String sql = "SELECT * FROM message WHERE user_idEmetteur=? OR user_idRecepteur=? ORDER BY dateMessage";
        
        Connection connexion = AccessDao.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, id);
        requette.setString(2, id);

        ResultSet rs = requette.executeQuery();

        while (rs.next()) {

            Message m = new Message();
            m.setIdMessage(rs.getInt("idMessage"));
            m.setCorpsMessage(rs.getString("corpsMessage"));
            m.setDateMessage(rs.getTimestamp("dateMessage"));
            m.setUser_idEmetteur(rs.getInt("user_idEmetteur"));
            m.setUser_idRecepteur(rs.getInt("user_idRecepteur"));
 
            result.add(m);
        }
        return result;
    }
    
    public static void insert(Message message) throws SQLException {
        String sql = "INSERT INTO message (corpsMessage, dateMessage, user_idEmetteur, user_idRecepteur) VALUES (?, ?, ?,?)";

        Connection connexion = AccessDao.getConnection();

        PreparedStatement ordre = connexion.prepareStatement(sql);

        ordre.setString(1, message.getCorpsMessage());
        ordre.setTimestamp(2, message.getDateMessage());
        ordre.setInt(3, message.getUser_idEmetteur());
        ordre.setInt(4, message.getUser_idRecepteur());

        ordre.execute();
    }
}
