/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

import java.sql.Date;

/**
 *
 * @author ESIC
 */
public class Client extends User {
    
    protected String numClient;
    private int conseiller_idUser;

    public Client(String numClient, int id, String nom, String prenom, String email, String tel, Date dateConnexion, String mdp, boolean actifuser) {
        super(id, nom, prenom, email, tel, dateConnexion, mdp, actifuser);
        this.numClient = numClient;
        
    }
    
    public Client(){
        
    }

    public String getNumClient() {
        return numClient;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getEmail() {
        return email;
    }

    public String getTel() {
        return tel;
    }

    public Date getDateConnexion() {
        return dateConnexion;
    }

    public String getMdp() {
        return mdp;
    }

    public int getConseiller_idUser() {
        return conseiller_idUser;
    }
    
    

    public void setNumClient(String numClient) {
        this.numClient = numClient;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setDateConnexion(Date dateConnexion) {
        this.dateConnexion = dateConnexion;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public void setConseiller_idUser(int conseiller_idUser) {
        this.conseiller_idUser = conseiller_idUser;
    }
    
    
   
}
