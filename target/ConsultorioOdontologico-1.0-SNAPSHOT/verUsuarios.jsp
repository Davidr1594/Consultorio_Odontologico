
<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyPrimeraParte.jsp" %>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Ver Usuarios</h1>
                    <p>A continuyacion podra visualizar la lista completa de los usuarios</p>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Usuarios</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID:</th>
                                            <th>Nombre</th>
                                            <th>Rol</th>
                                            <th style ="width: 210px">Accion</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID:</th>
                                            <th>Nombre</th>
                                            <th>Rol</th>
                                            <th style ="width: 210px">Accion</th>
                                        </tr>
                                    </tfoot>
                                        <% 
                                            List<Usuario> listaUsuarios = (List)request.getSession().getAttribute("listaUsuarios");  
                                        %>
                                    <tbody>
                                        <% 
                                            for(Usuario usu : listaUsuarios){               
                                        %>
                                        
                                        <tr>
                                            <td id="id_usuario<%=usu.getId_usuario()%>"><%= usu.getId_usuario()%></td>
                                            <td><%=usu.getNombre_usuario()%></td>
                                            <td><%=usu.getRol()%></td>
                                            <td style="display: flex; width:230px;">
                                                <form name="eliminar" action="SvEliminarUsuarios" method="POST">
                                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: #E14242; margin-right:5px; ">
                                                        <i class="fas fa-trash-alt"></i>  Eliminar    
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=usu.getId_usuario()%>">
                                                    
                                                </form>
                                                    <form name="editar" action="SvEditUsuarios" method="GET">    
                                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: #075FC2; margin-right:30px; ">
                                                        <i class="fas fa-pencil-alt"></i>  Editar   
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=usu.getId_usuario()%>">
                                                </form>
                                            </td>
                                        </tr>
                                      <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

<%@include file="components/bodyFinal.jsp" %>