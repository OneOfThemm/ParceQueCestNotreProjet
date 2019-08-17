/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

import java.sql.Date;

/**
 *
 * @author esic
 */
public class Admin extends User {

    protected String loginAdmin; 

    public Admin() {
    }

    public Admin(String loginAdmin, int id, String nom, String prenom, String email, String tel, Date dateConnexion, String mdp) {
        super(id, nom, prenom, email, tel, dateConnexion, mdp);
        this.loginAdmin = loginAdmin;
    }

    public Admin(String loginAdmin) {
        this.loginAdmin = loginAdmin;
    }

    

    public String getLoginAdmin() {
        return loginAdmin;
    }

    @Override
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

    public void setLoginAdmin(String loginAdmin) {
        this.loginAdmin = loginAdmin;
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

    @Override
    public String toString() {
        return "Admin{" + "loginAdmin=" + loginAdmin + '}';
    }

}
