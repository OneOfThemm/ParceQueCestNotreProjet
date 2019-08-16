/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.Carte;
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
public class CarteDao {
    public static List<Carte> getByOwner(String numClient) throws SQLException {
        List<Carte> result = new ArrayList<>();
        String sql = "SELECT * FROM carte INNER JOIN compte ON compte.idCompte=carte.compte_idCompte INNER JOIN client ON client.idUser=compte.client_idUser WHERE numClient=?";
        
        Connection connexion = AccessDao.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, numClient);

        ResultSet rs = requette.executeQuery();

        while (rs.next()) {

            Carte c = new Carte();
            c.setIdCarte(rs.getInt("idCarte"));
            c.setNumCarte(rs.getString("numCarte"));
            c.setDateExpirationCarte(rs.getTimestamp("dateExpirationCarte"));
            c.setCodeCarte(rs.getInt("codeCarte"));
            c.setCompte_idCompte(rs.getInt("compte_idCompte"));
            

            result.add(c);
        }
        return result;
    }
    
    public static List<Carte> getByAccount(String numCompte) throws SQLException {
        List<Carte> result = new ArrayList<>();
        String sql = "SELECT * FROM carte INNER JOIN compte ON compte.idCompte=carte.compte_idCompte WHERE numCompte=?";
        
        Connection connexion = AccessDao.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, numCompte);

        ResultSet rs = requette.executeQuery();

        while (rs.next()) {

            Carte c = new Carte();
            c.setIdCarte(rs.getInt("idCarte"));
            c.setNumCarte(rs.getString("numCarte"));
            c.setDateExpirationCarte(rs.getTimestamp("dateExpirationCarte"));
            c.setCodeCarte(rs.getInt("codeCarte"));
            c.setCompte_idCompte(rs.getInt("compte_idCompte"));
            

            result.add(c);
        }
        return result;
    }
    
     public static void insert(Carte carte) throws SQLException {
        String sql = "INSERT INTO compte (numCarte, dateExpirationCarte, codeCarte, compte_idCompte) VALUES (?, ?, ?, ?)";

        Connection connexion = AccessDao.getConnection();

        PreparedStatement ordre = connexion.prepareStatement(sql);

        ordre.setString(1, carte.getNumCarte());
        ordre.setTimestamp(2, carte.getDateExpirationCarte());
        ordre.setInt(3, carte.getCodeCarte());
        ordre.setInt(4, carte.getCompte_idCompte());

        ordre.execute();
    }
}
