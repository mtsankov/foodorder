<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['fosaid']==0)) {
   header('location:logout.php');
  } else{

if(isset($_POST['submit']))
  {
    
    $oid=$_GET['orderid'];
    $ressta=$_POST['status'];
    $remark=$_POST['restremark'];
 
    
    $query=mysqli_query($con,"insert into tblfoodtracking(OrderId,remark,status) value('$oid','$remark','$ressta')"); 
   $query=mysqli_query($con, "update   tblorderaddresses set OrderFinalStatus='$ressta' where Ordernumber='$oid'");
    if ($query) {
    $msg="Поръчката е променена";
  }
  else
    {
      $msg="Грешка, моля опитахте отново";
    }

  
}
  

  ?>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Система за поръчка на храни</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

    <?php include_once('includes/leftbar.php');?>

        <div id="page-wrapper" class="gray-bg">
             <?php include_once('includes/header.php');?>
        <div class="row border-bottom">
        
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>Детайли за поръчката<?php echo $_GET['orderid'];?></h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="dashboard.php">начало</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a>Детайли за поръчката</a>
                    </li>
                    <li class="breadcrumb-item active">
                        <strong>Промени</strong>
                    </li>
                </ol>
            </div>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        
                        <div class="ibox-content">
                           <?php
 $oid=$_GET['orderid'];
$ret=mysqli_query($con,"select * from tblorderaddresses join tbluser on tbluser.ID=tblorderaddresses.UserId where tblorderaddresses.Ordernumber='$oid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
<div class="row">
  <div class="col-6">
     <p style="font-size:16px; color:red; text-align: center"><?php if($msg){
    echo $msg;
  }  ?> </p>
<table border="1" class="table table-bordered mg-b-0">
 <tr align="center">
<td colspan="2" style="font-size:20px;color:blue">
 Потребител</td></tr>

    <tr>
    <th>Номер на поръчка</th>
    <td><?php  echo $row['Ordernumber'];?></td>
  </tr>
  <tr>
    <th>Име</th>
    <td><?php  echo $row['FirstName'];?></td>
  </tr>
  <tr>
    <th>Фамилия</th>
    <td><?php  echo $row['LastName'];?></td>
  </tr>
  <tr>
    <th>Email</th>
    <td><?php  echo $row['Email'];?></td>
  </tr>
  <tr>
    <th>Телефон</th>
    <td><?php  echo $row['MobileNumber'];?></td>
  </tr>

  <tr>
    <th>Град</th>
    <td><?php  echo $row['City'];?></td>
  </tr>
<tr>
    <th>Улица</th>
    <td><?php  echo $row['StreetName'];?></td>
  </tr>
  <tr>
    <th>Номер</th>
    <td><?php  echo $row['Flatnobuldngno'];?></td>
  </tr>
  
 <!-- <tr>
    <th>Area</th>
    <td><?php  echo $row['Area'];?></td>
  </tr>
  <tr>
    <th>Land Mark</th>
    <td><?php  echo $row['Landmark'];?></td>
  </tr>
-->
  <tr>
    <th>Дата на поръчката</th>
    <td><?php  echo $row['OrderTime'];?></td>
  </tr>
  <tr>
    <th>Статус на поръчката</th>
    <td> <?php  
    $orserstatus=$row['OrderFinalStatus'];
if($row['OrderFinalStatus']=="Потвърдена поръчка")
{
  echo "Потвърдена поръчка";
}

if($row['OrderFinalStatus']=="Приготвяне")
{
  echo "Подготовка на поръчка";
}
if($row['OrderFinalStatus']=="Доставяне")
{
  echo "Доставяне на поръчка";
}
if($row['OrderFinalStatus']=="Доставена!")
{
  echo "Доставена поръчка";
}
if($row['OrderFinalStatus']=="")
{
  echo "Очаква одобрението на ресторанта";
}
if($row['OrderFinalStatus']=="Анулирана поръчка")
{
  echo "Анулирана поръчка";
}


     ;?></td>
  </tr>
</table>
     </div>
<div class="col-6" style="margin-top:2%">
  <?php  
$query=mysqli_query($con,"select tblfood.Image,tblfood.ItemName,tblfood.ItemDes,tblfood.ItemPrice,tblfood.ItemQty,tblorders.FoodId from tblorders join tblfood on tblfood.ID=tblorders.FoodId where tblorders.IsOrderPlaced=1 and tblorders.OrderNumber='$oid'");
$num=mysqli_num_rows($query);
$cnt=1;?>
<table border="1" class="table table-bordered mg-b-0">
 <tr align="center">
<td colspan="4" style="font-size:20px;color:blue">
 Детайли за поръчката</td></tr> 

 <tr>
    <th>#</th>
<th>Продукт </th>
<th>Име</th>
<th>Цена</th>
</tr>
<?php  
while ($row1=mysqli_fetch_array($query)) {
  ?>
<tr>
  <td><?php echo $cnt;?></td>
 <td><img src="itemimages/<?php echo $row1['Image']?>" width="60" height="40" alt="<?php echo $row['ItemName']?>"></td> 
  <td><?php  echo $row1['ItemName'];?></td> 
   <td><?php  echo $total=$row1['ItemPrice'];?> лв.</td> 
</tr>
<?php 
$grandtotal+=$total;
$cnt=$cnt+1;} ?>
<tr>
  <th colspan="3" style="text-align:center">Тотал </th>
<td><?php  echo $grandtotal;?> лв.</td>
</tr> 


</table>  


</div>


     </div>   
                            



                            <table class="table mb-0">

<?php

  if($orserstatus=="Order Confirmed" || $orserstatus=="Food being Prepared" || $orserstatus=="Food Pickup" || $orserstatus=="" ){ ?>


<form name="submit" method="post"> 
<tr>
    <th>Забележка:</th>
    <td>
    <textarea name="restremark" placeholder="" rows="12" cols="14" class="form-control wd-450" ></textarea></td>
  </tr>

  <tr>
    <th>Статус на поръчката:</th>
    <td>
   <select name="status" class="form-control wd-450" required="true" >
     <option value="Потвърдерна поръчка" selected="true">Потвърдерна поръчка</option>
          <option value="Анулирана поръчка">Анулирана поръчка</option>
     <option value="Подготовка на поръчка">Подготовка на поръчка</option>
     <option value="Доставяне на поръчка">Доставяне на поръчка </option>
     <option value="Поръчката доставена">Поръчката доставена</option>
   </select></td>
  </tr>
    <tr align="center">
    <td colspan="2"><button type="submit" name="submit" class="btn btn-primary">Промени поръчка</button></td>
  </tr>
</form>
  <?php } ?>
 


</table>

<?php } ?>


<?php  if($orserstatus!=""){
$ret=mysqli_query($con,"select tblfoodtracking.OrderCanclledByUser,tblfoodtracking.remark,tblfoodtracking.status as fstatus,tblfoodtracking.StatusDate
 from tblfoodtracking where tblfoodtracking.OrderId ='$oid'");
$cnt=1;

 $cancelledby=$row['OrderCanclledByUser'];
 ?>
<table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
  <tr align="center">
   <th colspan="4" >История на доставките</th> 
  </tr>
  <tr>
    <th>#</th>
<th>Забележка</th>
<th>Статус</th>
<th>Време</th>
</tr>
<?php  
while ($row=mysqli_fetch_array($ret)) { 
  ?>
<tr>
  <td><?php echo $cnt;?></td>
 <td><?php  echo $row['remark'];?></td> 
  <td><?php  echo $row['fstatus'];
if($cancelledby==1){
echo "("."от потребител".")";
} else {

echo "("."от ресторанта".")";
}

  ?></td> 
   <td><?php  echo $row['StatusDate'];?></td> 
</tr>
<?php $cnt=$cnt+1;} ?>
</table>
<?php  }  
?>
                        </div>
                    </div>
                    </div>

                </div>
            </div>
        <?php include_once('includes/footer.php');?>

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- Steps -->
    <script src="js/plugins/steps/jquery.steps.min.js"></script>

    <!-- Jquery Validate -->
    <script src="js/plugins/validate/jquery.validate.min.js"></script>


    <script>
        $(document).ready(function(){
            $("#wizard").steps();
            $("#form").steps({
                bodyTag: "fieldset",
                onStepChanging: function (event, currentIndex, newIndex)
                {
                    // Always allow going backward even if the current step contains invalid fields!
                    if (currentIndex > newIndex)
                    {
                        return true;
                    }

                    // Forbid suppressing "Warning" step if the user is to young
                    if (newIndex === 3 && Number($("#age").val()) < 18)
                    {
                        return false;
                    }

                    var form = $(this);

                    // Clean up if user went backward before
                    if (currentIndex < newIndex)
                    {
                        // To remove error styles
                        $(".body:eq(" + newIndex + ") label.error", form).remove();
                        $(".body:eq(" + newIndex + ") .error", form).removeClass("error");
                    }

                    // Disable validation on fields that are disabled or hidden.
                    form.validate().settings.ignore = ":disabled,:hidden";

                    // Start validation; Prevent going forward if false
                    return form.valid();
                },
                onStepChanged: function (event, currentIndex, priorIndex)
                {
                    // Suppress (skip) "Warning" step if the user is old enough.
                    if (currentIndex === 2 && Number($("#age").val()) >= 18)
                    {
                        $(this).steps("next");
                    }

                    // Suppress (skip) "Warning" step if the user is old enough and wants to the previous step.
                    if (currentIndex === 2 && priorIndex === 3)
                    {
                        $(this).steps("previous");
                    }
                },
                onFinishing: function (event, currentIndex)
                {
                    var form = $(this);

                    // Disable validation on fields that are disabled.
                    // At this point it's recommended to do an overall check (mean ignoring only disabled fields)
                    form.validate().settings.ignore = ":disabled";

                    // Start validation; Prevent form submission if false
                    return form.valid();
                },
                onFinished: function (event, currentIndex)
                {
                    var form = $(this);

                    // Submit form input
                    form.submit();
                }
            }).validate({
                        errorPlacement: function (error, element)
                        {
                            element.before(error);
                        },
                        rules: {
                            confirm: {
                                equalTo: "#password"
                            }
                        }
                    });
       });
    </script>

</body>

</html>
   <?php } ?>