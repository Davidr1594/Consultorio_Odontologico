

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyPrimeraParte.jsp" %>
<h1>Alta Odontologos</h1> <br>
<p>En este apartado se hace el registro de un nuevo odontologo.</p>
<form class="odonto" action="SvOdontologos" method="POST"> <br>
                                <div class="form-group col">
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="dni"
                                               placeholder="DNI" name="dni">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                                            placeholder="Nombre">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="apellido" 
                                               placeholder="Apellido" name="apellido">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="telefono"
                                            placeholder="Telefono" name="telefono">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="direccion"
                                            placeholder="Direccion" name="direccion">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="date" class="form-control form-control-user" id="fechaNac"
                                            placeholder="Fecha Nac" name="fechaNac">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="especialidad"
                                            placeholder="Especialidad" name="especialidad">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="especialidad"
                                            placeholder="Horario" name="unHorario">
                                    </div>                                    
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="especialidad"
                                            placeholder="Usuario" name="unUsuario">
                                    </div>                                    
                                    <!-- aca va ir todo lo que respecta a horarios y usuarios -->
                              
                                </div>
                                    
                                    <br>
                                    <button class="btn btn-primary btn-user btn-block" type="submit">
                                    Registrar Odontologo
                                    </button>
                                </a>
                          
                            </form>
<%@include file="components/bodyFinal.jsp" %>