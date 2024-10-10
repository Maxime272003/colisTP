package fr.usmb.jee.banque;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Version;
@Entity

public class Colis implements Serializable{
    @Id
    private int id;
    private double poids;
    private int valeur;
    private String origine;
    private String destination;

    @Version
    private long version;

    public Colis() {
        super();
    }

    public Colis(int id, double poids, int valeur, String origine, String destination) {
        this.id = id;
        this.solde = solde;
        this.valeur = valeur;
        this.origine = origine;
        this.destination = destination;
    }

    public String getId() {
        return this.id;
    }

    private void setId(String id) {
         this.id = id;
    }

    public double getSolde() {
        return this.solde;
    }

    public void setSolde(double solde) {
        this.solde = solde;
    }


    public String getValeur() {
        return this.id;
    }

    private void setValeur(int valeur) {
         this.valeur = valeur;
    }


    public String getDestination() {
        return this.destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getOrigine() {
        return this.origine;
    }

    public void setOrigine(String origine) {
        this.origine = origine;
    }
    

    public long getVersion() {
        return version;
    }

    public void setVersion(long version) {
        this.version = version;
    }
}