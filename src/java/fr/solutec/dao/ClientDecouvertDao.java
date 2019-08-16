/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.ClientDecouvert;
import java.sql.Connection;
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
    
    
    
            public static List<ClientDecouvert> getAll() throws SQLException {
        List<ClientDecouvert> result = new ArrayList<>();

        String sql = "SELECT User.idUser, User.nom, User.prenom, User.tel, compte.numCompte, compte.solde, compte.decouvert  FROM user INNER JOIN compte ON compte.client_idUser  = user.idUser WHERE compte.solde < compte.decouvert";

        Connection connexion = AccessDao.getConnection();

        Statement requette = connexion.createStatement();

        ResultSet rs = requette.executeQuery(sql);

        while (rs.next()) {
            ClientDecouvert u = new ClientDecouvert();               
            
            u.setId_dec(rs.getInt("idUser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setTel(rs.getString("tel"));
            u.setNumCompte(rs.getString("numCompte"));
            u.setSolde(rs.getDouble("solde"));
            u.setDecouvert(rs.getDouble("decouvert"));

            result.add(u);

        }
        return result;
    }
}
