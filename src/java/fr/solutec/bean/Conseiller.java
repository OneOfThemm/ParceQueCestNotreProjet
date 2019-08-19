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
public class Conseiller extends User {
    
    
    private String login_conseiller;

    public Conseiller() {
    }

    public Conseiller(int id, String nom, String prenom, String email, String tel, Date dateConnexion, String mdp, boolean actifuser,String login_conseiller) {
        super(id,  nom,prenom, email, tel,  dateConnexion,  mdp, actifuser);
        this.login_conseiller = login_conseiller;
    }

    public String getLogin_conseiller() {
        return login_conseiller;
    }

    public void setLogin_conseiller(String login_conseiller) {
        this.login_conseiller = login_conseiller;
    }
    
    
    
          
}
