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
public class Admin {
    private User user;
    private String loginAdmin;
    private String mdp;

    public Admin() {
    }

    public Admin(User user, String loginAdmin, String mdp) {
        this.user = user;
        this.loginAdmin = loginAdmin;
        this.mdp = mdp;
    }

    public User getUser() {
        return user;
    }

    public String getLoginAdmin() {
        return loginAdmin;
    }

    public String getMdp() {
        return mdp;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setLoginAdmin(String loginAdmin) {
        this.loginAdmin = loginAdmin;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    @Override
    public String toString() {
        return "Admin{" + "user=" + user + ", login=" + loginAdmin + ", mdp=" + mdp + '}';
        
        
    }
   

        
    }
 
    
    
    
