<%-- 
    Document   : alta
    Created on : 30-oct-2015, 8:59:47
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt"%>

<sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" 
url="jdbc:oracle:thin:@localhost:1521:XE" user="system" password="javaoracle"/>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Alta de Departamento</title>
    <style>
      label {
        display: inline-block;
        width: 10%;
      }
    </style>
  </head>
  <body>
    <c:if test="${param.codigo != null}">
      <sql:update var="numero">
        insert into dept values (?,?,?)
        <sql:param value="${param.codigo}"/>
        <sql:param value="${param.nombre}"/>
        <sql:param value="${param.localidad}"/>
      </sql:update>
      <p>${numero} registros insertados</p>
      <br/>
    </c:if>
    <form action="alta.jsp" method="post">
      <label for="codigo">DEPT_NO</label>
      <input name="codigo" type="number" min="00" max="99" required autofocus/>
      <br/>
      <label for="nombre">DNOMBRE</label>
      <input name="nombre" type="text" required/>
      <br/>
      <label for="localidad">LOC</label>
      <input name="localidad" type="text" required/>
      <br/>
      <input type="submit" value="Grabar"/>
  </body>
</html>
