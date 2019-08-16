/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

/**
 *
 * @author esic
 */
public class ClientDecouvert {
    private int id_dec;
    private String nom;
    private String prenom;
    private String tel;
    
    private String numCompte;
    private double solde;
    private double decouvert;

    


    public ClientDecouvert(int id_dec, String nom, String prenom, String tel, String numCompte, double solde, double decouvert) {
        this.id_dec = id_dec;
        this.nom = nom;
        this.prenom = prenom;
        this.tel = tel;
        this.numCompte = numCompte;
        this.solde = solde;
        this.decouvert = decouvert;
    }

    public ClientDecouvert() {
    }
    
    

    public int getId_dec() {
        return id_dec;
    }

    public void setId_dec(int id_dec) {
        this.id_dec = id_dec;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getNumCompte() {
        return numCompte;
    }

    public void setNumCompte(String numCompte) {
        this.numCompte = numCompte;
    }

    public double getSolde() {
        return solde;
    }

    public void setSolde(double solde) {
        this.solde = solde;
    }

    public double getDecouvert() {
        return decouvert;
    }

    public void setDecouvert(double decouvert) {
        this.decouvert = decouvert;
    }
    
    
    
    
}
