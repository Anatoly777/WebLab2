<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="history" class="Web2.model.ShotHistory" scope ="session"/>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Лабораторная #2 Веб программирование</title>
  <script type="text/javascript" src="js/shoot.js"></script>
  <script type="text/javascript" src="js/x_checkbox.js"></script>
  <script type="text/javascript" src="js/r_checkbox.js"></script>
  <script type="text/javascript" src="js/controller.js"></script>
  <script type="text/javascript" src="js/canvas_controller.js"></script>
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css' />"/>
</head>
<body onload="canvas_init()">
<div id="shapka" class="nasimnaya_knopka">
  <button onclick="window.location.href = 'https://github.com/Anatoly777';" class="stylistics_knopkam maiden-9"><p>Лаптев Анатолий Аллександрович P3213</p></button>
  <button onclick="window.location.href = 'https://se.ifmo.ru/courses/web';" class="stylistics_knopkam maiden-9"><p> Лабораторная работа №2 ::: Вариант: 13514 </p></button>
</div>

<div id="container">
  <div id = "menu">
    <canvas id="target_canvas" width="400" height="400"></canvas>
  </div>
  <div id = "last_hit_results">
    <p id = "last_hit_result"></p>
  </div>
  <div id="content" class = "shoot_form">
    <form id="shoot_form" name="shoot_form"  enctype="multipart/form-data">
      <table id="shoot_form_table">
            <label for="x_checkbox_table">X:</label>
            <table id="x_checkbox_table">
              <input type="checkbox" name="x_checkbox" id="x_checkbox_1" value="-2" onclick=x_checkbox_click(id)><p1> -2 </p1>
              <input type="checkbox" name="x_checkbox" id="x_checkbox_2" value="-1.5" onclick=x_checkbox_click(id)><p1> -1.5 </p1>
              <input type="checkbox" name="x_checkbox" id="x_checkbox_3" value="-1" onclick=x_checkbox_click(id)><p1> -1 </p1>
              <input type="checkbox" name="x_checkbox" id="x_checkbox_4" value="-0.5"  onclick=x_checkbox_click(id)><p1> -0.5 </p1>
              <input type="checkbox" name="x_checkbox" id="x_checkbox_5" value="0" onclick=x_checkbox_click(id)><p1> 0 </p1>
              <input type="checkbox" name="x_checkbox" id="x_checkbox_6" value="0.5" onclick=x_checkbox_click(id)><p1> 0.5 </p1>
              <input type="checkbox" name="x_checkbox" id="x_checkbox_7" value="1" onclick=x_checkbox_click(id)><p1> 1 </p1>
              <input type="checkbox" name="x_checkbox" id="x_checkbox_8" value="1.5" onclick=x_checkbox_click(id)><p1> 1.5 </p1>
              <input type="checkbox" name="x_checkbox" id="x_checkbox_9" value="2" onclick=x_checkbox_click(id)><p1> 2 </p1>
            </table>
        <div>

            <label for="y_input" id="y_input_label">Y:</label>
            <input type="text" id="y_input" name="y_input">

        </div>
        <div>
          <label for="r_input">R:</label>
          <input type="text" id="r_input" name="r_input" onkeyup="r_input_click()">
        </div>
      </table>
      <div class="nasimnaya_knopka">
       <button class="stylistics_knopkam maiden-1" type = "button" onclick="shoot();">Красная кнопка</button>
      </div>>
    </form>
  </div>
</div>>
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


    <c:forEach items="${history.history}" var ="result">
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
      </c:forEach>
    </tr>
    </tbody>
  </table>
</div>
</body>

</html>