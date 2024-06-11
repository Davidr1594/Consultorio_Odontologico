
<%@page import="logica.Odontologo"%>
<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyPrimeraParte.jsp" %>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Ver Odontologos</h1>
                    <p>A continuacion podra visualizar la lista completa de los odontologos</p>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Odontologos</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>DNI:</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Telefono</th>
                                            <th>Direccion</th>
                                            <th>Fecha Nac</th>
                                            <th>Especialidad</th>
                                            <th>HorarioIn</th>
                                            <th>HorarioFin</th>
                                            <th>Usuario</th>
                                            <th style ="width: 210px">Accion</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>DNI:</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Telefono</th>
                                            <th>Direccion</th>
                                            <th>Fecha Nac</th>
                                            <th>Especialidad</th>
                                            <th>HorarioIn</th>
                                            <th>HorarioFin</th>
                                            <th>Usuario</th>
                                            <th style ="width: 210px">Accion</th>
                                        </tr>
                                    </tfoot>
                                        <% 
                                            List<Odontologo> listaOdontologos = (List)request.getSession().getAttribute("listaOdontologos");  
                                        %>
                                    <tbody>
                                        <% 
                                            for(Odontologo odonto : listaOdontologos){               
                                        %>
                                        
                                        <tr>
                                            <td id="id_odontologo<%=odonto.getId()%>"><%= odonto.getId()%></td>
                                            <td><%=odonto.getNombre()%></td>
                                            <td><%=odonto.getApellido()%></td>
                                            <td><%=odonto.getTelefono()%></td>
                                            <td><%=odonto.getDireccion()%></td>
                                            <td><%=odonto.getFecha_nac()%></td>
                                            <td><%=odonto.getEspecialidad()%></td>
                                            <td><%=odonto.getUnHorario().getHorario_inicio()%></td>
                                            <td><%=odonto.getUnHorario().getHorario_fin()%></td>
                                            <td><%=odonto.getUnUsuario().getNombre_usuario()%></td>
                                            
                                            <td style="display: flex; width:230px;">
                                                <form name="eliminar" action="SvEliminarUsuarios" method="POST">
                                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: #E14242; margin-right:5px; ">
                                                        <i class="fas fa-trash-alt"></i>  Eliminar    
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=odonto.getId()%>">
                                                    
                                                </form>
                                                    <form name="editar" action="SvEditUsuarios" method="GET">    
                                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: #075FC2; margin-right:30px; ">
                                                        <i class="fas fa-pencil-alt"></i>  Editar   
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=odonto.getId()%>">
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