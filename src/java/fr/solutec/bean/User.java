/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

import java.sql.Date;

public abstract class User {

    protected int id;
    protected String nom;
    protected String prenom;
    protected String email;
    protected String tel;
    protected Date dateConnexion;
    protected String mdp;


    public User(int id, String nom, String prenom, String email, String tel, Date dateConnexion, String mdp) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.tel = tel;
        this.dateConnexion = dateConnexion;
        this.mdp = mdp;
    }
    public User(){
        
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

    
    public String infoUser() {
        return "User{" + "id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email + ", tel=" + tel + ", dateConnexion=" + dateConnexion + ", mdp=" + mdp + '}';
    }
    
    
    
    
}
