<?php 
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['fosuid']==0)) {
  header('location:logout.php');
  } else{
if(isset($_POST['submit']))
  {
    $sid=$_SESSION['fosuid'];
    $fname=$_POST['firstname'];
    $lname=$_POST['lastname'];
    
   

    $query=mysqli_query($con, "update tbluser set FirstName='$fname', LastName='$lname' where ID='$sid'");


    if ($query) {
    $msg="Профила е обновен";
  }
  else
    {
      $msg="Something Went Wrong. Please try again";
    }

}

 ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Актуализация на профила </title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> </head>
<body>
     <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
         <!--header starts-->
         <header id="header" class="header-scroll top-header headrom">
            <!-- .navbar -->
            <?php include('includes/header.php');?>
            <!-- /.navbar -->

         </header>
         <div class="page-wrapper">
            <div class="breadcrumb">
               <div class="container">
                  <ul>
                     <li><a href="#" class="active">Начало</a></li>
                     <li>Профил</li>
                  </ul>
               </div>
            </div>
            <section class="contact-page inner-page">
               <div class="container">
                  <div class="row">
                     <!-- REGISTER -->
                     <div class="col-md-8">
                        <div class="widget">
                           <div class="widget-body">
                              <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
                              <form action="" name="submit" method="post">
                                <?php
$pid=$_SESSION['fosuid'];
$ret=mysqli_query($con,"select * from tbluser where ID='$pid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>  
                                 <div class="row">
								 <h4>Актуализация на профила.</h4>
                        <hr>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Име</label>
                                       <input class="form-control" type="text" value="<?php  echo $row['FirstName'];?>" id="firstname" name="firstname" required="true"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Фамилия</label>
                                       <input class="form-control" type="text" value="<?php  echo $row['LastName'];?>" id="lastname" name="lastname" required="true"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Email </label>
                                       <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" name="email" value="<?php  echo $row['Email'];?>" required="true" readonly='true'> 
                                    </div>
									<div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Град</label>
                                       <input class="form-control" type="text" value="<?php  echo $row['Town'];?>" id="town" name="town" required="true"> 
                                    </div>
									<div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Адрес</label>
                                       <input class="form-control" type="text" value="<?php  echo $row['Addr'];?>" id="adress" name="adress" required="true"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Телефон</label>
                                       <input class="form-control" type="text" id="mobilenumber" name="mobilenumber" value="<?php  echo $row['MobileNumber'];?>" readonly="true">
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Дата на регистрация</label>
                                       <input class="form-control" type="text" id="regdate" name="regdate" value="<?php  echo $row['RegDate'];?>" readonly="true">
                                    </div>
                                   
                                                                     </div>
                                                                   <?php } ?> 
                                 
                                 <div class="row">
                                    <div class="col-sm-4">
                                      <button type="submit" name="submit" class="btn theme-btn"><i class="ft-user"></i>Актуализирай</button>
                                    </div>
                              
                                 </div>
                              </form>
                           </div>
                           <!-- end: Widget -->
                        </div>
                        <!-- /REGISTER -->
                     </div>
                     <!-- WHY? -->
                     <div class="col-md-4">
                        
                        <img src="images/profile.png" alt="" class="img-fluid">
                        <p></p>
              
            
                        <!-- end:Panel
                        <h4 class="m-t-20">Contact Customer Support</h4> -->
                         <p>Ако имате нужда от помощ или въпроси, свържете се с нас </p>
                        <p> <a href="contact.php" class="btn theme-btn m-t-15">Свържете се с нас</a> </p>
                     </div>
                     <!-- /WHY? -->
                  </div>
               </div>
            </section>
            
            <!-- start: FOOTER -->
           <?php include('includes/footer.php');?>
            <!-- end:Footer -->
         </div>
         <!-- end:page wrapper -->
      </div>
      <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>
<?php  } ?>