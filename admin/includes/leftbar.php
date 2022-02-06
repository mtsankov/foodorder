    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <img alt="image" class="rounded-circle" src="img/user.png"/>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <?php
$admid=$_SESSION['fosaid'];
$ret=mysqli_query($con,"select AdminName from tbladmin where ID='$admid'");
$row=mysqli_fetch_array($ret);
$name=$row['AdminName'];

?>
                        
                            <span class="text-muted text-xs block"><?php echo $name; ?> <b class="caret"></b></span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a class="dropdown-item" href="adminprofile.php">Профил</a></li>
                            <li><a class="dropdown-item" href="changepassword.php">Смени парола</a></li>
                            <li class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="logout.php">Изход</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="dashboard.php"><i class="fa fa-th-large"></i> <span class="nav-label">Табло за управление</span> <span class="fa arrow"></span></a>
                                    </li>
                                    <li>
                    <a href="user-detail.php"><i class="fa fa-users"></i> <span class="nav-label">Регистрирани потребители</span> <span class="fa arrow"></span></a>
                                    </li>
                
              
               
              
                <li>
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">Категории</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="add-foodcategory.php">Добави категория</a></li>
                        <li><a href="manage-foodcategory.php">Промени категория</a></li>
                    
                       
                    </ul>
                </li>
 <li>
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">Продукти</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="add-fooditem.php">Добави продукт</a></li>
                        <li><a href="manage-fooditems.php">Промени продукт</a></li>
                    
                       
                    </ul>
                </li>  
                <li>
                    <a href="#"><i class="fa fa-list"></i> <span class="nav-label">Поръчки</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                         <li><a href="notconfirmedyet.php">Не потвърдени</a></li>
                        <li><a href="confirmed-order.php">Потвърдени</a></li>
						<li><a href="canclled-order.php">Анулирани</a></li>
                        <li><a href="foodbeingprepared.php">Приготвящи се поръчки</a></li>
                        <li><a href="food-pickup.php">Взети поръчки за доставка</a></li>
                        <li><a href="food-delivered.php">Доставени</a></li>
                        <li><a href="canclled-order.php">Анулирани</a></li>
                         <li><a href="all-order.php">Всички поръчки</a></li>
                    
                       
                    </ul>
                </li>
                   <li>
                    <a href="#"><i class="fa fa-file"></i> <span class="nav-label">Справки</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                         <li><a href="bwdates-report-ds.php">По дати</a></li>
                        <li><a href="requestcount-report-ds.php">По поръчки</a></li>
                        <li><a href="sales-reports.php">По продажби </a></li>
                       
                    </ul>
                </li>
                <li>
                    <a href="search.php"><i class="fa fa-th-large"></i> <span class="nav-label">Търсене</span> <span class="fa arrow"></span></a>
                                    </li>
                                    <li>
               
            </ul>

        </div>
    </nav>