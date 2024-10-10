package fr.usmb.colis;

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
        this.poids = poids;
        this.valeur = valeur;
        this.origine = origine;
        this.destination = destination;
    }

    public int getId() {
        return this.id;
    }

    
    public void setId(int id) {
         this.id = id;
    }

    public double getPoids() {
        return this.poids;
    }

    public void setPoids(double poids) {
        this.poids = poids;
    }


    public int getValeur() {
        return this.valeur;
    }

    public void setValeur(int valeur) {
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