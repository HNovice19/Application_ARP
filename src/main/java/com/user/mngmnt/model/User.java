package com.user.mngmnt.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USER")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "matricule")
    private String matricule;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "roleName")
    private String roleName;

    @Column(name = "isActive")
    private boolean isActive;



    public User() {
    }



    public User(String nom, String matricule, String email, String password, String roleName, boolean isActive) {
        this.nom = nom;
        this.matricule = matricule;
        this.email = email;
        this.password = password;
        this.roleName = roleName;
        this.isActive = isActive;
    }



    public Long getId() {
        return id;
    }



    public void setId(Long id) {
        this.id = id;
    }



    public String getNom() {
        return nom;
    }



    public void setNom(String Nom) {
        this.nom = Nom;
    }



    public String getMatricule() {
        return matricule;
    }



    public void setMatricule(String Matricule) {
        this.matricule = Matricule;
    }



    public String getEmail() {
        return email;
    }



    public void setEmail(String email) {
        this.email = email;
    }



    public String getPassword() {
        return password;
    }



    public void setPassword(String password) {
        this.password = password;
    }



    public String getRoleName() {
        return roleName;
    }



    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }



    public boolean isActive() {
        return isActive;
    }



    public void setActive(boolean isActive) {
        this.isActive = isActive;
    }

}
