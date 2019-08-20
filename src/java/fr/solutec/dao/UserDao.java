/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author esic
 */
public class UserDao {
    public static String getNameById(int id) throws SQLException {
        String result = null;

        String sql = "SELECT * FROM user WHERE idUser=?";

        Connection connexion = AccessDao.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setInt(1, id);


        ResultSet rs = requette.executeQuery();

        if (rs.next()) {
            result= rs.getString("nom")+" "+rs.getString("prenom");
        }
        return result;

    }
}
