/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Persistencia;

import Logica.Usuario;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Logger;

/**
 *
 * @author Iván
 */
public class ControladoraPersistencia {
    
    UsuarioJpaController usuJpa = new UsuarioJpaController();
    
    public void crearUsuario (Usuario usu){
        usuJpa.create(usu);
    }
    
    public List<Usuario> traerUsuarios (){
        return usuJpa.findUsuarioEntities();
    }

    public void borrarUsuario(String identificacionE) {
    try {
        usuJpa.destroy(identificacionE);
        System.out.println("Usuario eliminado correctamente.");
    } catch (Exception e) {
        System.out.println("Error al eliminar usuario: " + e.getMessage());
    }
}

    public Usuario traerUsuario(String identificacionEdi) {
        return usuJpa.findUsuario(identificacionEdi);
    }

    public void editarUsuario(Usuario usu) {
       try {
        usuJpa.edit(usu);
        System.out.println("Usuario editado correctamente.");
    } catch (Exception e) {
        System.out.println("Error al editar el usuario: " + e.getMessage());
    }
    }
}
