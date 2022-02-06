<nav class="navbar navbar-dark">
               <div class="container">
                  <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                  <a class="navbar-brand" href="index.php">  Система за поръчка на храна </a>
                  <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                     <ul class="nav navbar-nav">
                        <li class="nav-item"> <a class="nav-link active" href="index.php">Начало<span class="sr-only">(current)</span></a> </li>
                     
                        <li class="nav-item"> <a class="nav-link" href="food_results.php?pageno=1">Меню</a> </li>


  <?php if (strlen($_SESSION['fosuid']==0)) {?>  
<li class="nav-item"> <a class="nav-link" href="track-order-on.php">Проследяване на поръчка</a> </li>  
<!--<li class="nav-item"> <a class="nav-link" href="registration.php">Регистрирай се</a> </li>-->
<li class="nav-item"> <a class="nav-link" href="login.php">Вход</a>
 
<?php } ?>

 <?php if (strlen($_SESSION['fosuid']>0)) {?>
                            <li class="nav-item"><a class="nav-link" href="my-order.php" style="color: red"><strong>Мойте поръчки </strong> </a> </li>
                        <li class="nav-item"><a class="nav-link" href="cart.php" style="color: red"><strong> Количка</strong> </a> </li>
                       



                        <li class="nav-item dropdown">
                           <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Моя акаунт</a>
                           <div class="dropdown-menu">
                              <a class="dropdown-item" href="changepassword.php">Настройки</a> <a class="dropdown-item" href="profile.php">Профил</a>  
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="logout.php">Изход</a>
                           </div>
                                                
                        </li>
						 <?php } ?>

                       
                     </ul>
                  </div>
               </div>
            </nav>