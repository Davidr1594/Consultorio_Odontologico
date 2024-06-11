
package logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import persistencia.ControladoraPersistencia;
import servelets.SvTurnos;


public class Controladora {
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUsuario(String nombreUsuario, String contrasenia, String rol){
        Usuario usu = new Usuario();
        usu.setNombre_usuario(nombreUsuario);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);
        controlPersis.crearUsuario(usu);
        
    }

    public List<Usuario> traerUsuarios() {
        return controlPersis.traerUsuarios();
    }

    public void eliminarUsuario(int id_usuario) {
        controlPersis.eliminarUsuario(id_usuario);
    }

    public Usuario traerUsuario(int id_usuario) {
        return controlPersis.traerUsuario(id_usuario);
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario(usu);
        
    }

    public void crearTurno(String fechaTurno, String horaTurno, String afeccion) {

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        
        Turno turno = new Turno();
        
        LocalDate fechaAux = LocalDate.parse(fechaTurno, formatter); 
        turno.setFecha_turno(java.sql.Date.valueOf(fechaAux));
        
        turno.setHora_turno(horaTurno);
        turno.setAfeccion(afeccion);
        
        controlPersis.crearTurno(turno);
    }


    public boolean validarLogin(String usuario, String contrasenia) {
        boolean ingreso = false;
        List<Usuario> listaUsuarios = controlPersis.traerUsuarios();
        for(Usuario usu : listaUsuarios){
            if (usuario.equals(usu.getNombre_usuario())) {
                if (contrasenia.equals(usu.getContrasenia())) {
                    ingreso = true;
                    
                }
                else{
                    ingreso = false;
                }
                
            }
            
        }
        return ingreso;
    }

    public void crearSecretario(String nombre, String apellido, String direccion, String telefono, String fechaNac, String dni, String sector, int idUsuario) {
        Secretario secre = new Secretario();
        Usuario usu = controlPersis.traerUsuario(idUsuario);
        
        secre.setNombre(nombre);
        secre.setApellido(apellido);
        secre.setDireccion(direccion);
        secre.setTelefono(telefono);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        
        LocalDate fechaAux = LocalDate.parse(fechaNac, formatter);
        
        
        secre.setFecha_nac(java.sql.Date.valueOf(fechaAux));
        secre.setDni(dni);
        
        secre.setSector(sector);
        secre.setUnUsuario(usu);

        controlPersis.crearSector(secre);
       
    }

    public void crearOdontologo(String dni, String nombre, String apellido, String telefono, String direccion, String fechaNac, String especial, int unHorario, int unUsuario) {
        Odontologo odonto = new Odontologo();
        odonto.setDni(dni);
        odonto.setNombre(nombre);
        odonto.setApellido(apellido);
        odonto.setDireccion(direccion);
        odonto.setTelefono(telefono);
        
        java.sql.Date fechaC = this.convertirFecha(fechaNac);
        odonto.setFecha_nac(fechaC);
        
        odonto.setEspecialidad(especial);
        
        Usuario usu = controlPersis.traerUsuario(unUsuario);
        odonto.setUnUsuario(usu);
        Horario horario = this.traerHorario(unHorario);
        odonto.setUnHorario(horario);
        
        controlPersis.crearOdontologo(odonto);
        
    }

    private Horario traerHorario(int unHorario) {
        return controlPersis.traerHorario(unHorario);
    }

    private java.sql.Date convertirFecha(String fechaNac) {
        
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        
        LocalDate fechaAux = LocalDate.parse(fechaNac, formatter);
        
        
        return java.sql.Date.valueOf(fechaAux);
    }

    public void crearHorario(String horarioInicio, String horarioFin) {
        Horario horario = new Horario();
        horario.setHorario_fin(horarioFin);
        horario.setHorario_inicio(horarioInicio);
        
        controlPersis.crearHorario(horario);
        
    }

    public List<Odontologo> traerOdontologos() {
        return controlPersis.traerOdontologos();
    }

    public List<Horario> traerHorarios() {
        return controlPersis.traerHorarios();
    }



}
