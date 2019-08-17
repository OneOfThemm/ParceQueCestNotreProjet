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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author esic
 */
public class ConseillerDao {
    public static Conseiller getByLoginPass (String loginConseiller, String mdp) throws SQLException{
    Conseiller result = null;
    
    String sql = "SELECT * FROM conseiller INNER JOIN user ON user.idUser=conseiller.idUser WHERE loginConseiller=? AND mdp =?";
    
    Connection connexion = AccessDao.getConnection();
    
    PreparedStatement requette = connexion.prepareStatement(sql);
    requette.setString(1, loginConseiller);
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
        
        //On va chercher à inserer les valeurs dans user et conseiller (car le conseiller dépend aussi de la table user, on a donc deux requetes SQL
        String sqlUser = "INSERT INTO user (nom, prenom, email, tel, dateConnexion,mdp,actifuser) VALUES(?,?,?,?,?,?,?)";
        String sqlAdmin = "INSERT INTO conseiller (login_conseiller)VALUES(?)";
                
        Connection connexion = AccessDao.getConnection();
        
        //On défini égalemnt deux preparestatement ORDRE : un pour CONSEILLER, un pour USER
        
        PreparedStatement ordreUser = connexion.prepareStatement(sqlUser);
        PreparedStatement ordreConseiler = connexion.prepareStatement(sqlAdmin);
        
        //ON RECUPERE LES INFOS DANS LA PERSONN PASSEE EN PARAMETRE, puis on prépare la requete SQL - côté USER et CONSEILLER
        
        ordreUser.setString(1, person.getNom());
        ordreUser.setString(2, person.getPrenom());
        ordreUser.setString(3, person.getEmail());
        ordreUser.setString(4, person.getTel());
        ordreUser.setDate  (5, person.getDateConnexion());
        ordreUser.setString(6, person.getMdp());
        ordreUser.setBoolean(7, true);
        
        ordreConseiler.setString(1, person.getLogin_conseiller()  );
        
        //On éxecute les deux ordres que l'on vient de préparer 
        
        ordreUser.execute();
        ordreConseiler.execute();
    }
       
       
    public static List<Conseiller> getAll() throws SQLException {
        List<Conseiller> result = new ArrayList<>();

        String sql = "SELECT * FROM conseiller INNER JOIN user ON user.idUser=conseiller.idUser";

        Connection connexion = AccessDao.getConnection();

        Statement requette = connexion.createStatement();

        ResultSet rs = requette.executeQuery(sql);

        while (rs.next()) {

            Conseiller u = new Conseiller();
            u.setId(rs.getInt("idUser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setEmail(rs.getString("email"));
            u.setTel(rs.getString("tel"));
            u.setDateConnexion(rs.getDate("dateConnexion"));
            u.setMdp(rs.getString("mdp"));
            u.setLogin_conseiller(rs.getString("loginConseiller"));
            u.setActifUser(rs.getBoolean("actifuser"));

            result.add(u);

        }
        return result;
    } 
    
        public static List<Conseiller> getAllActifs() throws SQLException {
        List<Conseiller> result = new ArrayList<>();

        String sql = "SELECT * FROM conseiller INNER JOIN user ON user.idUser=conseiller.idUser WHERE actifuser = 1";

        Connection connexion = AccessDao.getConnection();

        Statement requette = connexion.createStatement();

        ResultSet rs = requette.executeQuery(sql);

        while (rs.next()) {

            Conseiller u = new Conseiller();
            u.setId(rs.getInt("idUser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setEmail(rs.getString("email"));
            u.setTel(rs.getString("tel"));
            u.setDateConnexion(rs.getDate("dateConnexion"));
            u.setMdp(rs.getString("mdp"));
            u.setLogin_conseiller(rs.getString("loginConseiller"));
            u.setActifUser(rs.getBoolean("actifuser"));

            result.add(u);

        }
        return result;
    } 
        
            public static List<Conseiller> getAllInactifs() throws SQLException {
        List<Conseiller> result = new ArrayList<>();

        String sql = "SELECT * FROM conseiller INNER JOIN user ON user.idUser=conseiller.idUser WHERE actifuser = 0";

        Connection connexion = AccessDao.getConnection();

        Statement requette = connexion.createStatement();

        ResultSet rs = requette.executeQuery(sql);

        while (rs.next()) {

            Conseiller u = new Conseiller();
            u.setId(rs.getInt("idUser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setEmail(rs.getString("email"));
            u.setTel(rs.getString("tel"));
            u.setDateConnexion(rs.getDate("dateConnexion"));
            u.setMdp(rs.getString("mdp"));
            u.setLogin_conseiller(rs.getString("loginConseiller"));
            u.setActifUser(rs.getBoolean("actifuser"));

            result.add(u);

        }
        return result;
    } 
     
}
