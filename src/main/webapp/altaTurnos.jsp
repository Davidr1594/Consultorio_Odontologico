

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyPrimeraParte.jsp" %>
<h1>Alta Turnos</h1> <br>
<p>En este apartado se hace el registro de un nuevo Turno.</p>
<form class="Turno" action="SvTurnos" method="POST"> <br>
                                <div class="form-group col">
                                    <div class="col-sm-6 mb-3">
                                        <input type="date" class="form-control form-control-user" id="fechaTurno"
                                            placeholder="Fecha Turno" name="fechaTurno">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="horaTurno"
                                            placeholder="Hora del turno" name="horaTurno">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="afeccion"
                                            placeholder="Afeccion" name="afeccion">
                                    </div>
                                    
                                    <!-- aca va ir todo lo que respecta a horarios y usuarios -->
                                    <br>
                                    <button class="btn btn-primary btn-user btn-block" type="submit">
                                        Registrar Turnos
                                    </button>
                                </a>
                          
                            </form>
<%@include file="components/bodyFinal.jsp" %>