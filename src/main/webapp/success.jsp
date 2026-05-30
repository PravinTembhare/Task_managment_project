<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="">
.gradient-custom {

background: #6a11cb;
margin-top:-vh

}

</style>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body class="gradient-custom ">


  <div class="container py-5 h-100">
  


    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
      
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
        <form action="Sub2"  >
        
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Add your task</h2>
              
              <p class="text-white-50 mb-5"><span style="color:white;">${data.username}</span> enter your Task and Object</p>

              <div data-mdb-input-init class="form-outline form-white mb-4">
              <label class="form-label" for="typeEmailX">Task Name</label>
                <input type="text" placeholder="Task name" name="tname" id="typeEmailX" class="form-control form-control-lg" />
                
              </div>

              <div data-mdb-input-init class="form-outline form-white mb-4">
               <label class="form-label" for="typePasswordX">Objective</label>
                <input type="text" placeholder="Object" name="objective" id="typePasswordX" class="form-control form-control-lg"  style="font-size: 2vh;" />
              
              </div>

            

              <input data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-light btn-lg px-5" type="submit" value="Submit"></input>
              <a href="List"><button data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-light btn-lg px-5" type="button" > View List</button></a>

           
            </div>

           

          </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>