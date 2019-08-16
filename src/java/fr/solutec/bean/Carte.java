/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

import java.sql.Timestamp;

/**
 *
 * @author esic
 */
public class Carte {
    
    private int idCarte;
    private String numCarte;
    private Timestamp dateExpirationCarte;
    private int codeCarte;
    private int compte_idCompte;

    //Constructors
    public Carte() {
    }

    public Carte(String numCarte, Timestamp dateExpirationCarte, int codeCarte, int compte_idCompte) {
        this.numCarte = numCarte;
        this.dateExpirationCarte = dateExpirationCarte;
        this.codeCarte = codeCarte;
        this.compte_idCompte = compte_idCompte;
    }
    
    //Getters
    public int getIdCarte() {
        return idCarte;
    }

    public String getNumCarte() {
        return numCarte;
    }

    public Timestamp getDateExpirationCarte() {
        return dateExpirationCarte;
    }

    public int getCodeCarte() {
        return codeCarte;
    }

    public int getCompte_idCompte() {
        return compte_idCompte;
    }
    
    //Setters
    public void setNumCarte(String numCarte) {
        this.numCarte = numCarte;
    }

    public void setDateExpirationCarte(Timestamp dateExpirationCarte) {
        this.dateExpirationCarte = dateExpirationCarte;
    }

    public void setCodeCarte(int codeCarte) {
        this.codeCarte = codeCarte;
    }

    public void setCompte_idCompte(int compte_idCompte) {
        this.compte_idCompte = compte_idCompte;
    }
    
}
