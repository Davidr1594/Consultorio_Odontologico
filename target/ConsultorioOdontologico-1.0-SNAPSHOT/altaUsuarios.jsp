

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyPrimeraParte.jsp" %>
<h1>Alta Usuarios</h1> <br>
<p>Esto es el apartado para dar de alta los diferentes usuarios del sistema</p>
<form class="user" action="SvUsuarios" method="POST"> <br>
                                <div class="form-group col">
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="nombreUsu" name="nombreUsu"
                                            placeholder="Nombre Usuario">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                                            placeholder="Contrasena">
                                    </div>

                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="rol" name="rol"
                                            placeholder="Rol">
                                    </div>
                                    
                                    <!-- aca va ir todo lo que respecta a horarios y usuarios -->
                              
                                </div> <br>
                               
                                <button class="btn btn-primary btn-user btn-block" type="submit">
                                    Crear Usuario
                                </button>
                          
                            </form>
<%@include file="components/bodyFinal.jsp" %>