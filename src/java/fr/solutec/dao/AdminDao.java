/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;
import fr.solutec.bean.*;
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
public class AdminDao {
    
    public static Admin getByLoginPassAdmin(String login, String mdp) throws SQLException {
        Admin result = null;
        String sql = "SELECT * FROM admin INNER JOIN user ON user.iduser=admin.iduser WHERE mdp =? AND loginAdmin =?";

        Connection connexion = AccessDao.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql); //vient de java sql

        requette.setString(1, login);
        requette.setString(2, mdp);

        ResultSet rs = requette.executeQuery(); //on stock la réponse de la requette sql dans rs

        if (rs.next()) {
            
            result = new Admin();
            result.setLoginAdmin(rs.getString("loginAdmin"));
            result.setEmail(rs.getString("email"));
            result.setId(rs.getInt("idUser"));
            result.setMdp(rs.getString("mdp"));
            result.setNom(rs.getString("nom"));
            result.setPrenom(rs.getString("prenom"));
            result.setTel(rs.getString("tel"));
            result.setDateConnexion(rs.getDate("dateConnexion"));
                     

        }

        return result;
    }
    
     public static void addAdmin(Admin admin) throws SQLException {
       
        String sqlAdmin = "INSERT INTO admin (loginAdmin, idUser)VALUES(?,?)";
        String sqlUser = "INSERT INTO user (idUser, nom, prenom, email, tel, dateConnexion,mdp) VALUES(?,?,?,?,?,?,?)";
        Connection connexion = AccessDao.getConnection();
        PreparedStatement ordreAdmin = connexion.prepareStatement(sqlAdmin);
        PreparedStatement ordreUser = connexion.prepareStatement(sqlUser);

        ordreAdmin.setString(1, admin.getLoginAdmin());
        ordreAdmin.setInt(2, admin.getId());
        
        ordreUser.setInt(1, admin.getId());
        ordreUser.setString(2, admin.getNom());
        ordreUser.setString(3, admin.getPrenom());
        ordreUser.setString(4, admin.getEmail());
        ordreUser.setString(5, admin.getTel());
        ordreUser.setDate(6, admin.getDateConnexion());
        ordreUser.setString(7, admin.getMdp());
        
        ordreAdmin.execute();
        ordreUser.execute();
    }
    
     public static List<Admin> getAllAdmin() throws SQLException {

        List<Admin> result = new ArrayList<>();

        String sql = "SELECT admin.idUser, nom, prenom, email, tel, dateConnexion, mdp, loginAdmin  FROM user INNER JOIN admin ON admin.idUser = user.idUser;";

        Connection connexion = AccessDao.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql); //vient de java sql

        ResultSet rs = requette.executeQuery(); //on stock la réponse de la requette sql dans rs

        while (rs.next()) {                    
            Admin a = new Admin();
            a.setId(rs.getInt("idUser"));
            a.setNom(rs.getString("nom"));
            a.setPrenom(rs.getString("prenom"));
            a.setEmail(rs.getString("email"));
            a.setTel(rs.getString("tel"));
            a.setDateConnexion(rs.getDate("dateConnexion"));
            a.setMdp(rs.getString("mdp"));
            a.setLoginAdmin(rs.getString("loginAdmin"));           
            
            result.add(a);
        }
        return result;
    }
}















/*
public class UserDao {

    public static User getByLoginPass(String mail, String mdp) throws SQLException {
        User result = null;
        String sql = "SELECT* FROM user WHERE mailuser=?AND mdpuser=?";

        Connection connexion = AccessDAO.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql); //vient de java sql

        requette.setString(1, mail);
        requette.setString(2, mdp);

        ResultSet rs = requette.executeQuery(); //on stock la réponse de la requette sql dans rs

        if (rs.next()) {
            result = new User();
            result.setId(rs.getInt("iduser"));
            result.setNom(rs.getString("nomuser"));
            result.setPrenom(rs.getString("prenomuser"));
            result.setAge(rs.getInt("ageuser"));
            result.setPoid(rs.getDouble("poidiniuser"));
            result.setSexe(rs.getString("sexeuser"));
            result.setTaille(rs.getInt("tailleuser"));
            result.setMail(rs.getString("mailuser"));
            result.setMdp(rs.getString("mdpuser"));

        }

        return result;
    }

    public static void addUser(User user) throws SQLException {
        String sql = "INSERT INTO user (nomuser, prenomuser, mailuser, mdpuser, sexeuser, poidiniuser,tailleuser,ageuser) VALUES(?,?,?,?,?,?,?,?)";
        Connection connexion = AccessDAO.getConnection();
        PreparedStatement ordre = connexion.prepareStatement(sql);

        ordre.setString(1, user.getNom());
        ordre.setString(2, user.getPrenom());
        ordre.setString(3, user.getMail());
        ordre.setString(4, user.getMdp());
        ordre.setString(5, user.getSexe());
        ordre.setDouble(6, user.getPoid());
        ordre.setInt(7, user.getTaille());
        ordre.setInt(8, user.getAge());

        ordre.execute();
    }

    public static List<User> getAll() throws SQLException {

        List<User> result = new ArrayList<>();

        String sql = "SELECT* FROM personne";

        Connection connexion = AccessDAO.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql); //vient de java sql

        ResultSet rs = requette.executeQuery(); //on stock la réponse de la requette sql dans rs

        while (rs.next()) {
            User u = new User();
            u.setId(rs.getInt("iduser"));
            u.setNom(rs.getString("nomuser"));
            u.setPrenom(rs.getString("prenomuser"));
            u.setMail(rs.getString("mailuser"));
            u.setSexe(rs.getString("sexeuser"));
            u.setTaille(rs.getInt("tailleuser"));
            u.setPoid(rs.getDouble("poidiniuser"));
            u.setAge(rs.getInt("ageuser"));           
            
            result.add(u);
        }
        return result;
    }
}
*/