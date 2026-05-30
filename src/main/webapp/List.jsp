<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
.gradient-custom {
background: #6a11cb;
margin-top:-vh
}
</style>
</head>
<body class="gradient-custom" >
<div class="container">
<div  style="font-size:8vh;text-align: center">Your Task</div>
<c:forEach items="${data}" var="s">
<div class="card bg-dark text-white" style="border-radius: 1rem;margin-top:3vh">
<div class="card-body">
<span style="font-size:4vh;text-decoration: underline; ">Task name :</span><span style="font-size:4vh;">  ${s.tname}</span><br><br>
<span style="font-size:3vh ;text-decoration: underline;">Task Object :</span><span style="font-size:3vh;"> ${s.objective}</span><br><br>
<div style="display:flex; gap:1rem;D">
 <a href="Done?tid=${s.tid}"><button data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-light btn-lg px-5 bg-light text-dark" type="button" style="margin-left:55vw" > Done</button></a>
 <a href="Update?tid=${s.tid}"><button data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-light btn-lg px-5 bg-light text-dark" type="button" > Update</button></a>
</div>
</div>
</div>
</c:forEach>
</div>
</body>
</html>