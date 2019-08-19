/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.ClientDecouvert;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author esic
 */
public class ClientDecouvertDao {
    
    
    
        public static List<ClientDecouvert> getAllDecouvert() throws SQLException {
        List<ClientDecouvert> result = new ArrayList<>();

        String sql = "SELECT Client.numClient, User.nom, User.prenom, User.email, User.tel, User.actifuser,compte.numCompte, compte.solde, compte.decouvert, compte.plafond  FROM user INNER JOIN client ON user.idUser = client.idUser INNER JOIN compte ON user.idUser = compte.client_idUser WHERE compte.solde < -(compte.decouvert) ORDER BY User.nom, User.prenom,compte.numCompte";

        Connection connexion = AccessDao.getConnection();

        Statement requette = connexion.createStatement();

        ResultSet rs = requette.executeQuery(sql);

        while (rs.next()) {
            ClientDecouvert u = new ClientDecouvert();               
            
            
            u.setNumClient(rs.getString("numClient")); 

            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setEmail(rs.getString("email"));
            u.setTel(rs.getString("tel"));
            u.setActifuser(rs.getInt("actifuser"));
            
            u.setNumCompte(rs.getString("numCompte"));
            u.setSolde(rs.getDouble("solde"));
            u.setDecouvert(rs.getDouble("decouvert"));
            u.setPlafond(rs.getDouble("Plafond"));

            result.add(u);

        }
        return result;
    }
            
    public static List<ClientDecouvert> getAllClients(int idConseiller) throws SQLException {
        List<ClientDecouvert> result = new ArrayList<>();

        String sql = "SELECT Client.numClient, User.nom, User.prenom, User.email, User.tel, User.actifuser, compte.numCompte, compte.solde, compte.decouvert, compte.plafond FROM user INNER JOIN client ON user.idUser = client.idUser INNER JOIN compte ON user.idUser = compte.client_idUser WHERE client.conseiller_IdUser =? ORDER BY User.nom, User.prenom,compte.numCompte" ;
        
        Connection connexion = AccessDao.getConnection();
        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setInt(1, idConseiller);
        
    
        ResultSet rs = requette.executeQuery();

        while (rs.next()) {
            ClientDecouvert u = new ClientDecouvert();               
            
                    
            u.setNumClient(rs.getString("numClient")); 

            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setEmail(rs.getString("email"));
            u.setTel(rs.getString("tel"));
            u.setActifuser(rs.getInt("actifuser"));
            
            u.setNumCompte(rs.getString("numCompte"));
            u.setSolde(rs.getDouble("solde"));
            u.setDecouvert(rs.getDouble("decouvert"));
            u.setPlafond(rs.getDouble("Plafond"));

            result.add(u);           
        }
        return result;
    }
}