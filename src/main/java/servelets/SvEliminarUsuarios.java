
package servelets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;

@WebServlet(name = "SvEliminarUsuarios", urlPatterns = {"/SvEliminarUsuarios"})
public class SvEliminarUsuarios extends HttpServlet {
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_usuario = Integer.parseInt(request.getParameter("id"));
        control.eliminarUsuario(id_usuario);
        response.sendRedirect("SvUsuarios");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}