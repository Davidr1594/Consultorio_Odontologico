

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyPrimeraParte.jsp" %>
<h1>Alta Horarios</h1> <br>
<p>En este apartado se hace el registro de un nuevo horario.</p>
<form class="odonto" action="SvHorarios" method="POST"> <br>
                                <div class="form-group col">
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="horarioInicio" name="horarioInicio"
                                            placeholder="Inicio de horario">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="horarioFin"
                                            placeholder="Fin del horario" name="horarioFin">
                                    </div>
                              
                                </div>
                                    
                                    <br>
                                    <button class="btn btn-primary btn-user btn-block" type="submit">
                                    Registrar Horarios
                                    </button>
                                </a>
                          
                            </form>
<%@include file="components/bodyFinal.jsp" %>