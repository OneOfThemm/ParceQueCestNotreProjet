/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.Compte;
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
public class CompteDao {
    public static List<Compte> getByOwner(String numClient) throws SQLException {
        List<Compte> result = new ArrayList<>();
        String sql = "SELECT * FROM compte INNER JOIN client ON client.idUser=compte.client_idUser WHERE numClient=?";
        
        Connection connexion = AccessDao.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, numClient);

        ResultSet rs = requette.executeQuery();

        while (rs.next()) {

            Compte c = new Compte();
            c.setIdCompte(rs.getInt("idCompte"));
            c.setSolde(rs.getDouble("solde"));
            c.setPlafond(rs.getDouble("plafond"));
            c.setDecouvert(rs.getDouble("decouvert"));
            c.setNumCompte(rs.getString("numCompte"));
            c.setClient_idUser(rs.getInt("client_idUser"));

            result.add(c);
        }
        return result;
    }
    
     public static void insert(Compte compte) throws SQLException {
        String sql = "INSERT INTO compte (solde, plafond, decouvert, numCompte, client_idUser) VALUES (?, ?, ?, ?, ?)";

        Connection connexion = AccessDao.getConnection();

        PreparedStatement ordre = connexion.prepareStatement(sql);

        ordre.setDouble(1, compte.getSolde());
        ordre.setDouble(2, compte.getPlafond());
        ordre.setDouble(3, compte.getDecouvert());
        ordre.setString(4, compte.getNumCompte());
        ordre.setInt(5, compte.getClient_idUser());

        ordre.execute();
    }
     
     
     public static List<Compte> getAllCompt (String numClient) throws SQLException {
         List<Compte> result = new ArrayList<>();
         String sql = "SELECT * FROM compte INNER JOIN client ON compte.client_idUser=client.idUser where client.numClient=?";
         
         
        Connection connexion = AccessDao.getConnection();
        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, numClient);
        
    
        ResultSet rs = requette.executeQuery();
        
        while (rs.next()) {
            Compte c = new Compte();               
            c.setIdCompte(rs.getInt("idCompte"));
            c.setSolde(rs.getDouble("solde"));
            c.setPlafond(rs.getDouble("plafond"));
            c.setDecouvert(rs.getDouble("decouvert"));
            c.setNumCompte(rs.getString("numClient"));
            c.setClient_idUser(rs.getInt("client_idUser"));

            result.add(c);           
        }
        return result;
     }
     public static Compte getByNum(String numCompte) throws SQLException {
       
        String sql = "SELECT * FROM compte numCompte=?";
        
        Connection connexion = AccessDao.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, numCompte);

        ResultSet rs = requette.executeQuery();

       

            Compte c = new Compte();
            c.setIdCompte(rs.getInt("idCompte"));
            c.setSolde(rs.getDouble("solde"));
            c.setPlafond(rs.getDouble("plafond"));
            c.setDecouvert(rs.getDouble("decouvert"));
            c.setNumCompte(rs.getString("numCompte"));
            c.setClient_idUser(rs.getInt("client_idUser"));

            
        return c;}
}
