

<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyPrimeraParte.jsp" %>
<h1>Edicion Usuarios</h1> <br>
<p>Esto es el apartado para modificar un usuario del sistema</p>
<% Usuario usu = (Usuario)request.getSession().getAttribute("unUsuario");
%>
<form class="user" action="SvEditUsuarios" method="POST"> <br>
                                <div class="form-group col">
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="nombreUsu" name="nombreUsu"
                                               placeholder="Nombre Usuario" value="<%=usu.getNombre_usuario()%>">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                                            placeholder="Contrasena" value="<%=usu.getContrasenia()%>">
                                    </div>

                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="rol" name="rol"
                                               placeholder="Rol" value="<%=usu.getRol()%>">
                                    </div>
                                    
                                    <!-- aca va ir todo lo que respecta a horarios y usuarios -->
                              
                                </div> <br>
                               
                                <button class="btn btn-primary btn-user btn-block" type="submit">
                                    Guardar Cambios
                                </button>
                          
                            </form>
<%@include file="components/bodyFinal.jsp" %>