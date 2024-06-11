
package servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Odontologo;

@WebServlet(name = "SvOdontologos", urlPatterns = {"/SvOdontologos"})
public class SvOdontologos extends HttpServlet {
        Controladora control = new Controladora();
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Odontologo> listaOdontologos = control.traerOdontologos();
        
        HttpSession misession = request.getSession();
        misession.setAttribute("listaOdontologos", listaOdontologos);
        
        response.sendRedirect("verOdontrologos.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String dni = request.getParameter("dni");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String telefono = request.getParameter("telefono");
                String direccion = request.getParameter("direccion");
                String fechaNac = request.getParameter("fechaNac");
                String especial = request.getParameter("especialidad");
                int unHorario = Integer.parseInt(request.getParameter("unHorario"));
                int unUsuario = Integer.parseInt(request.getParameter("unUsuario"));
                
                control.crearOdontologo(dni, nombre, apellido, telefono, direccion, fechaNac, especial, unHorario, unUsuario);
                response.sendRedirect("index.jsp");
                
                }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
