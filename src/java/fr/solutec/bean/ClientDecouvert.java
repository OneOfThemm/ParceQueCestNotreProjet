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
    
    private String numClient;
    
    private String nom;
    private String prenom;
    private String email;
    private String tel;
    private int actifuser;
    
    private String numCompte;
    private double solde;
    private double decouvert;
    private double plafond;

    public ClientDecouvert() {
    }

    public ClientDecouvert(int id_dec, String numClient, String nom, String prenom, String email, String tel, int actifuser, String numCompte, double solde, double decouvert, double plafond) {
        this.id_dec = id_dec;
        this.numClient = numClient;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.tel = tel;
        this.actifuser = actifuser;
        this.numCompte = numCompte;
        this.solde = solde;
        this.decouvert = decouvert;
        this.plafond = plafond;
    }

    public int getId_dec() {
        return id_dec;
    }

    public void setId_dec(int id_dec) {
        this.id_dec = id_dec;
    }

    public String getNumClient() {
        return numClient;
    }

    public void setNumClient(String numClient) {
        this.numClient = numClient;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getActifuser() {
        return actifuser;
    }

    public void setActifuser(int actifuser) {
        this.actifuser = actifuser;
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

    public double getPlafond() {
        return plafond;
    }

    public void setPlafond(double plafond) {
        this.plafond = plafond;
    }

 

    
    
    
    
}
