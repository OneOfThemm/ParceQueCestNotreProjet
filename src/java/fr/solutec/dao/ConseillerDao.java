/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.Conseiller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author esic
 */
public class ConseillerDao {
    
    
    public static Conseiller getByLoginPass (String login, String mdp) throws SQLException{
    Conseiller result = null;
    
    String sql = "SELECT * FROM personne WHERE login=? AND mdp =?";
    
    Connection connexion = AccessDao.getConnection();
    
    PreparedStatement requette = connexion.prepareStatement(sql);
    requette.setString(1, login);
    requette.setString(2, mdp);
    
    ResultSet rs = requette.executeQuery();
    
    if (rs.next()) {
        result = new Conseiller( );
        result.setId(rs.getInt("idpersonne"));
        result.setNom(rs.getString("nom"));
        result.setPrenom(rs.getString("prenom"));
        result.setLogin(rs.getString("login"));     
     }    
    return result;
}
    
    
    
       public static void insert (Conseiller person) throws SQLException {
        String sql = "INSERT INTO personne (nom, prenom, login, mdp) VALUES (?, ?, ?, ?)";
        
        Connection connexion = AccessDao.getConnection();
        
        PreparedStatement ordre = connexion.prepareStatement(sql);
        ordre.setString(1, person.getNom()  );
        ordre.setString(2, person.getPrenom()  );
        ordre.setString(3, person.getLogin()  );
        ordre.setString(4, person.getMdp()  );
        
        
        ordre.execute();
    }
}
