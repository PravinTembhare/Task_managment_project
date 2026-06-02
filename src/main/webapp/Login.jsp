<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
*{
  margin: 0px;
  padding: 0px;
  font-family:Arial, Helvetica, sans-serif;

}
.gradient-custom {

background: #6a11cb;
margin-top:-vh

}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<section class="vh-100 gradient-custom " >

  <div class="container py-5 h-100">
  


    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
      
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
        <form action="Success" >
        
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <div class="${msg2}" >
<marquee >${msg}</marquee>
</div>
              <p class="text-white-50 mb-5">Please enter your login and password here now !</p>

              <div data-mdb-input-init class="form-outline form-white mb-4">
                <input type="username" placeholder="username" name="username" id="typeEmailX" class="form-control form-control-lg" />
                <label class="form-label" for="typeEmailX">Username</label>
              </div>

              <div data-mdb-input-init class="form-outline form-white mb-4">
                <input type="password" placeholder="password" name="password" id="typePasswordX" class="form-control form-control-lg" />
                <label class="form-label" for="typePasswordX">Password</label>
              </div>

            

              <input data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-light btn-lg px-5" type="submit" value="Submit"></input>

           
            </div>

            <div>
              <p class="mb-0">Don't have an account? <a href="Register" class="text-white-50 fw-bold">Sign Up</a>
              </p>
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
