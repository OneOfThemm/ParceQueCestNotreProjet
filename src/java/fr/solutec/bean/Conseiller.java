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
public class Conseiller extends User {
    
    private int id_Conseiller;
    private String login_conseiller;

    public Conseiller() {
    }

    public Conseiller(int id_Conseiller, String login_conseiller) {
        super();
        this.id_Conseiller = id_Conseiller;
        this.login_conseiller = login_conseiller;
    }

    public int getId_Conseiller() {
        return id_Conseiller;
    }

    public void setId_Conseiller(int id_Conseiller) {
        this.id_Conseiller = id_Conseiller;
    }

    public String getLogin_conseiller() {
        return login_conseiller;
    }

    public void setLogin_conseiller(String login_conseiller) {
        this.login_conseiller = login_conseiller;
    }
    
    
    
          
}
