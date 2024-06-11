
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
import logica.Horario;


@WebServlet(name = "SvHorarios", urlPatterns = {"/SvHorarios"})
public class SvHorarios extends HttpServlet {
    Controladora control = new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
        List<Horario> listaHorarios = control.traerHorarios();
        HttpSession misession = request.getSession();
        misession.setAttribute("listaHorarios", listaHorarios);
        response.sendRedirect("verHorarios.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String horarioFin = request.getParameter("horarioFin");
        String horarioInicio = request.getParameter("horarioInicio");
        control.crearHorario(horarioInicio,horarioFin);
        
        response.sendRedirect("index.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
