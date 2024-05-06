/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Logica;

import Persistencia.ControladoraPersistencia;
import java.util.List;

/**
 *
 * @author Iván
 */
public class Controladora {
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUsuario (Usuario usu){
        controlPersis.crearUsuario(usu);
    }
    
    public List<Usuario> traerUsuarios (){
        return controlPersis.traerUsuarios();
    }

    public void borrarUsuario(String identificacionE) {
        controlPersis.borrarUsuario(identificacionE);
    }

    public Usuario traerUsuario(String identificacionEdi) {
        return controlPersis.traerUsuario(identificacionEdi);
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario (usu);
    }
}
