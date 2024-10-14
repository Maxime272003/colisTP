package fr.usmb.colis;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Version;

@Entity
public class Colis implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private double poids;
    private int valeur;
    private String origine;
    private String destination;
    private double latitude;
    private double longitude;
    private String emplacement;
    private String etat;

    @Version
    private long version;

    public Colis() {
        super();
    }

    public Colis(double poids, int valeur, String origine, String destination, 
                 double latitude, double longitude, String emplacement) {
        this.poids = poids;
        this.valeur = valeur;
        this.origine = origine;
        this.destination = destination;
        this.latitude = latitude;
        this.longitude = longitude;
        this.emplacement = emplacement;
        this.etat = "enregistrement";
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

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getEmplacement() {
        return emplacement;
    }

    public void setEmplacement(String emplacement) {
        this.emplacement = emplacement;
    }

    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }

    @Override
    public String toString() {
        return "Colis{" +
                "id=" + id +
                ", poids=" + poids +
                ", valeur=" + valeur +
                ", origine='" + origine + '\'' +
                ", destination='" + destination + '\'' +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", emplacement='" + emplacement + '\'' +
                ", etat='" + etat + '\'' +
                ", version=" + version +
                '}';
    }
}
