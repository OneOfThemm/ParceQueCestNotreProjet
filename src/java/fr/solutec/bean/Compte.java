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
public class Compte {
    private int idCompte;
    private double solde;
    private double plafond;
    private double decouvert;
    private String numCompte;
    private int client_idUser;

    //Constructors
    public Compte() {
    }

    public Compte(double solde, double plafond, double decouvert, String numCompte, int client_idUser) {
        this.solde = solde;
        this.plafond = plafond;
        this.decouvert = decouvert;
        this.numCompte = numCompte;
        this.client_idUser = client_idUser;
    }

    
    //Getters
    public int getIdCompte() {
        return idCompte;
    }

    public double getSolde() {
        return solde;
    }

    public double getPlafond() {
        return plafond;
    }

    public double getDecouvert() {
        return decouvert;
    }

    public String getNumCompte() {
        return numCompte;
    }

    public int getClient_idUser() {
        return client_idUser;
    }

    
    //Setters 
    public void setIdCompte(int idCompte) {
        this.idCompte = idCompte;
    }

    public void setSolde(double solde) {
        this.solde = solde;
    }

    public void setPlafond(double plafond) {
        this.plafond = plafond;
    }

    public void setDecouvert(double decouvert) {
        this.decouvert = decouvert;
    }

    public void setNumCompte(String numCompte) {
        this.numCompte = numCompte;
    }

    public void setClient_idUser(int client_idUser) {
        this.client_idUser = client_idUser;
    }
    
    public static Double retrait(Compte c, Double montant){
        Double nvsolde = c.getSolde();
        nvsolde= nvsolde-montant;
        
       return nvsolde;
    }
    public static Double depot(Compte c, Double montant){
        Double nvsolde = c.getSolde();
        nvsolde= nvsolde+montant;
        
       return nvsolde;
    }
    public static void virement(Compte c, Compte d, Double montant){
        retrait(c, montant);
        depot(d, montant);
        
    }
    
    
}
