package fr.usmb.colis;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;

@Stateless
public class ColisService {

    @PersistenceContext
    private EntityManager em;

    public void enregistrerColis(Colis colis) {
        colis.setEtat("enregistrement");
        System.out.println("Enregistrement du colis : " + colis);
        em.persist(colis);
    }

    public void mettreAJourColis(int id, double latitude, double longitude, String emplacement, String etat) {
        Colis colis = em.find(Colis.class, id);
        if (colis != null) {
            colis.setLatitude(latitude);
            colis.setLongitude(longitude);
            colis.setEmplacement(emplacement);
            colis.setEtat(etat);
            System.out.println("Mise à jour du colis : " + colis);
        } else {
            System.out.println("Colis non trouvé avec l'ID : " + id);
        }
    }

    public Colis suivreColis(int id) {
        Colis colis = em.find(Colis.class, id);
        if (colis != null) {
            System.out.println("Suivi du colis : " + colis);
        } else {
            System.out.println("Colis non trouvé avec l'ID : " + id);
        }
        return colis;
    }

    public List<Colis> getAllColis() {
        List<Colis> colis = em.createQuery("SELECT c FROM Colis c", Colis.class).getResultList();
        System.out.println("Récupération de tous les colis : " + colis.size() + " colis trouvés");
        return colis;
    }
}
