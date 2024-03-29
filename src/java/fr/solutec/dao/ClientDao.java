/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.Client;
import fr.solutec.bean.Conseiller;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import java.util.ArrayList;

import java.util.List;

public class ClientDao {

    public static Client getByLoginPass(String numClient, String mdp) throws SQLException {
        Client result = null;

        String sql = "SELECT * FROM client INNER JOIN user ON user.idUser=client.idUser WHERE numClient=? AND mdp=?";

        Connection connexion = AccessDao.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, numClient);
        requette.setString(2, mdp);

        ResultSet rs = requette.executeQuery();

        if (rs.next()) {
            result = new Client();
            result.setId(rs.getInt("idUser"));
            result.setNom(rs.getString("nom"));
            result.setPrenom(rs.getString("prenom"));
            result.setEmail(rs.getString("email"));
            result.setTel(rs.getString("tel"));
            result.setDateConnexion(rs.getDate("dateConnexion"));
            result.setMdp(rs.getString("mdp"));
            result.setNumClient(rs.getString("numClient"));
            result.setConseiller_idUser(rs.getInt("conseiller_idUser"));

        }
        return result;

    }

    public static void insert(Client person,Conseiller member) throws SQLException {
        //String sql = "INSERT INTO client (nom, prenom, email, tel, dateConnexion, mdp, numClient) VALUES (?, ?, ?, ?, ?, ?, ?)";
        String sqlUser = "INSERT INTO user (nom, prenom, email, tel, mdp, actifuser) VALUES(?,?,?,?,?,?)";
        //Connection connexion = AccessDao.getConnection();
        Connection connexion = AccessDao.getConnection();
        //PreparedStatement ordre = connexion.prepareStatement(sql);
        PreparedStatement ordreUser = connexion.prepareStatement(sqlUser);
        //ordre.setString(1, person.getNom());
        //ordre.setString(2, person.getPrenom());
        //ordre.setString(3, person.getEmail());
        //ordre.setString(4, person.getTel());
        //ordre.setDate(5, person.getDateConnexion());
        //ordre.setString(6, person.getMdp());
        //ordre.setString(7, person.getNumClient());
        
        ordreUser.setString(1, person.getNom());
        ordreUser.setString(2, person.getPrenom());
        ordreUser.setString(3, person.getEmail());
        ordreUser.setString(4, person.getTel());        
        ordreUser.setString(5, person.getMdp());
        ordreUser.setBoolean(6, person.getActifUser());
               
        ordreUser.execute();
        //ordre.execute();
        
        String sqlGetIDUSER = "SELECT idUser FROM user WHERE email=?";
        PreparedStatement requetteID = connexion.prepareStatement(sqlGetIDUSER);
        requetteID.setString(1, person.getEmail());
        
        ResultSet rs = requetteID.executeQuery(); 
        rs.next();
        int ID = rs.getInt("idUser");
        int conseiller_idUser = member.getId();
            
        String sqlCli = "INSERT INTO client (numClient,idUser, conseiller_idUser) VALUES(?,?,?) ";
        PreparedStatement ordreConseiler = connexion.prepareStatement(sqlCli);
        ordreConseiler.setString(1, person.getNumClient());
        ordreConseiler.setInt(2, ID);
        ordreConseiler.setInt(3, conseiller_idUser);
        ordreConseiler.execute();
    }
 

    public static List<Client> getAll() throws SQLException {
        List<Client> result = new ArrayList<>();

        String sql = "SELECT * FROM client";

        Connection connexion = AccessDao.getConnection();

        Statement requette = connexion.createStatement();

        ResultSet rs = requette.executeQuery(sql);

        while (rs.next()) {

            Client u = new Client();
            u.setId(rs.getInt("idUser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setEmail(rs.getString("email"));
            u.setTel(rs.getString("tel"));
            u.setDateConnexion(rs.getDate("dateConnexion"));
            u.setMdp(rs.getString("mdp"));
            u.setNumClient(rs.getString("numClient"));

            result.add(u);

        }
        return result;
    }
    public static void nouvelledate(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date d = new Date(0,0,0);
        String timestamp= sdf.format(new Timestamp(System.currentTimeMillis()));
        d=Date.valueOf(timestamp);
        try {
        String sqlUser = "UPDATE user SET dateConnexion WHERE idUser = ?;";
        Connection connexion = AccessDao.getConnection();
            PreparedStatement ordreUser = connexion.prepareStatement(sqlUser);
            ordreUser.setDate(1, d);
            ordreUser.execute();
        }
        catch (Exception e) {
            

        }
        
    }
}
