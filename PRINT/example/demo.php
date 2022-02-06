<?php
/**
 * This is a demo script for the functions of the PHP ESC/POS print driver,
 * Escpos.php.
 *
 * Most printers implement only a subset of the functionality of the driver, so
 * will not render this output correctly in all cases.
 *
 * @author Michael Billington <michael.billington@gmail.com>
 */
//require  '../../../phpMyAdmin/vendor/autoload.php';
require  '../autoload.php';
//include_once('../../food/includes/dbconnection.php');
include_once('../../inventorypos/connectdb.php');

//require_once 'C:\Users\<Windows User Name>\vendor\autoload.php';
use  Mike42\Escpos\Printer;
//use Mike42\Escpos\PrintConnectors\FilePrintConnector;
use Mike42\Escpos\EscposImage;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;

//$connector = new FilePrintConnector("php://stdout");
//$connector = null;
$connector = new WindowsPrintConnector("ZJ-58");
$printer = new Printer($connector);

/* Initialize */
$printer -> initialize();
//$query=mysqli_query($con,"select tblfood.Image,tblfood.ItemName,tblfood.ItemDes,
//tblfood.ItemPrice,tblfood.ItemQty,tblorders.FoodId, tblorders.date, tblorders.time 
//from tblorders join tblfood on tblfood.ID=tblorders.FoodId where  tblorders.IsOrderPlaced=1
// and tblorders.OrderNumber=314140323");

//$query=mysqli_query($con,"select tblfood.ItemName,
//tblfood.ItemPrice, tblorders.date, tblorders.time 
//from tblorders join tblfood on tblfood.ID=tblorders.FoodId where  tblorders.IsOrderPlaced=1
/// and tblorders.OrderNumber=314140323");
//$num=mysqli_num_rows($query);
/* Text */


$select=$pdo->prepare("select * from table_invoice_details where invoice_id=53");
$select->execute();
//$item=$select->fetch(PDO::FETCH_OBJ)
    
    
    while($item=$select->fetch(PDO::FETCH_OBJ)){

//while ($row=mysqli_fetch_array($query)) {
	
	//$items[] = $row['ItemName'];
	//$p = $row['ItemPrice'];
	//$d = $row['date'];
	//$t = $row['time'];
//$printer -> text($row['date']);
//$printer -> cut();
//echo $t;
/* Line feeds */
//$r = ("hello")d;

	//$name = $item['ItemName'];
	//$price = $item['ItemPrice']
    //$printer -> text("$name\n");
    $printer -> text($item->product_name,"\n");
    $printer -> text($item->qty);
    $printer -> text($item->price);
	$printer -> text($item->price*$item->qty);
}
$printer -> setEmphasis(true);
$printer -> text($item->price*$item->qty);
$printer -> setEmphasis(false);
$printer -> feed();
//$printer -> text($tax);
//$printer -> selectPrintMode(Printer::MODE_DOUBLE_WIDTH);
//$printer -> text($item->price*$item->qty);
//$printer -> selectPrintMode();
//$printer -> setEmphasis(true);
//$printer -> text($subtotal);
//$printer -> setEmphasis(false);
//$printer -> feed();

//$printer -> text("$n\n");
//$printer -> text("$p\n");
//$printer -> cut();
// $printer -> text($i);
//$printer -> text($r);

$printer -> feed();

$printer -> text("$d   ");
$printer -> text("$t\n");

$printer -> feed(2);
$printer -> cut();

/* Font modes */

$printer -> close();
