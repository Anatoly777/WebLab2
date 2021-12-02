<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="result" class="Web2.model.Shot" scope ="request"/>
<html>
<div> <link rel="stylesheet" href="css/shoot.css">
  <table id="hits_table">
    <thead id="hits_table_head"  class = "table_header">
    <tr>
      <td>X</td>
      <td>Y</td>
      <td>R</td>
      <td>Result</td>
    </tr>
    </thead>
    <tbody id="hits_table_body">
    <tr class="content">
      <td>${result.x}</td>
      <td>${result.y}</td>
      <td>${result.r}</td>
      <c:if test = "${result.isHit}">
        <td class ="hit">hit</td>
      </c:if>
      <c:if test = "${!result.isHit}">
        <td class ="miss">miss</td>
      </c:if>
    </tr>


    </tbody>
  </table>
</div>
</html>