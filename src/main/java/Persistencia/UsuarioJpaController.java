package Persistencia;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.io.Serializable;
import java.util.List;
import Logica.Usuario;

/**
 * Controlador JPA para la entidad Usuario.
 */
public class UsuarioJpaController implements Serializable {

    // La unidad de persistencia se debe corresponder con el nombre definido en el persistence.xml
    private static final String PERSISTENCE_UNIT_NAME = "EjemploJavaWebPU";
    private static EntityManagerFactory factory;

    public UsuarioJpaController() {
        factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
    }

    /**
     * Método para obtener el EntityManager.
     */
    private EntityManager getEntityManager() {
        return factory.createEntityManager();
    }

    /**
     * Método para crear un nuevo usuario en la base de datos.
     */
    public void create(Usuario usuario) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(usuario);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    /**
     * Método para actualizar un usuario existente en la base de datos.
     */
    public void edit(Usuario usuario) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.merge(usuario);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    /**
     * Método para eliminar un usuario de la base de datos.
     */
    public void destroy(String identificacion) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Usuario usuario = em.find(Usuario.class, identificacion);
            em.remove(usuario);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    /**
     * Método para buscar un usuario por identificación.
     */
    public Usuario findUsuario(String identificacion) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Usuario.class, identificacion);
        } finally {
            em.close();
        }
    }

    /**
     * Método para obtener todos los usuarios de la base de datos.
     */
    public List<Usuario> findUsuarioEntities() {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT u FROM Usuario u");
            return q.getResultList();
        } finally {
            em.close();
        }
    }
}
