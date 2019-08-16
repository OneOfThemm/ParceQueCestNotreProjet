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
 
    // `user` (`idUser`, `nom`, `prenom`, `email`, `tel`, `dateConnexion`, `mdp`)
    // `loginConseiller` varchar(45) NOT NULL,
    // `idUser` int(11) NOT NULL,
    // `idMessage` int(11) NOT NULL,
    // `idClient` int(11) NOT NULL,
    
    public static Conseiller getByLoginPass (String login, String mdp) throws SQLException{
    Conseiller result = null;
    
    String sql = "SELECT * FROM client INNER JOIN user ON user.idUser=client.idUser WHERE login=? AND mdp =?";
    
    Connection connexion = AccessDao.getConnection();
    
    PreparedStatement requette = connexion.prepareStatement(sql);
    requette.setString(1, login);
    requette.setString(2, mdp);
    
    ResultSet rs = requette.executeQuery();
    
    if (rs.next()) {
        result = new Conseiller( );
        result.setId(rs.getInt("idUser"));   
        result.setNom(rs.getString("nom"));
        result.setPrenom(rs.getString("prenom"));
        result.setEmail(rs.getString("email"));
        result.setTel(rs.getString("tel"));
        result.setDateConnexion(rs.getDate("dateConnexion"));
        
        result.setLogin_conseiller(rs.getString("loginConseiller"));
     }    
    return result;
}
    
    
    
       public static void insert (Conseiller person) throws SQLException {
        String sql = "INSERT INTO user (nom, prenom, email, tel,  dateConnexion,  mdp,login_conseiller) VALUES (?, ?, ?,? ,?,?,?)";
        
        Connection connexion = AccessDao.getConnection();
        
        PreparedStatement ordre = connexion.prepareStatement(sql);
        ordre.setString(1, person.getNom()  );
        ordre.setString(2, person.getPrenom()  );
        ordre.setString(3, person.getEmail()  );
        ordre.setString(4, person.getTel()  );
        ordre.setDate  (5, person.getDateConnexion()  );
        ordre.setString(6, person.getMdp()  );
        
        ordre.setString(7, person.getLogin_conseiller()  );
        
        
        ordre.execute();
    }
}
