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
include_once('../../food/includes/mysqli_oop_connect.php');

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

/* Name of shop */
$printer -> setJustification(Printer::JUSTIFY_CENTER);
$printer -> selectPrintMode(Printer::MODE_DOUBLE_WIDTH);
$printer -> text("Пицария Елена");
$printer -> feed();

$printer -> selectPrintMode();
$printer -> text("Телефон: 0887435876\n");
$printer -> feed(1);


$query="select tblfood.ItemName,
tblfood.ItemPrice, tblorders.date, tblorders.time 
from tblorders join tblfood on tblfood.ID=tblorders.FoodId where  tblorders.IsOrderPlaced=1
 and tblorders.OrderNumber=245989610";
//$num=mysqli_num_rows($query);
/* Text */
$r = $mysqli->query($query);

// Count the number of returned rows:
$num = $r->num_rows;
    
if ($num > 0) { // If it ran OK, display the records.

	// Print how many users there are:
	//echo "<p>There are currently $num registered users.</p>\n";
//$printer -> text($num);
$printer -> feed();


// Fetch and print all the records:
	while ($row = $r->fetch_object()) {
		
		
		$printer -> setJustification(Printer::JUSTIFY_LEFT);

	//$printer -> setEmphasis(true);
	$printer -> text($row->ItemName);
	$printer -> text( ' ');
    $printer -> text($row->ItemPrice);
	$printer -> text( ' лв.');
	//$printer -> setEmphasis(false);
$printer -> feed();
$date = $row->date ." ". $row->time;
//$time = $row->time;
$total +=$row->ItemPrice;
	//$printer -> text($row->Itemprice*$num);
	//	echo '<tr><td align="left">' . $row->ItemName . '</td><td align="left">' . $row->ItemPrice . '</td></tr>
		//';
	//}
}
	//echo '</tbody></table>'; // Close the table.


$printer -> text("Общо ");
$printer -> text($total);
$printer -> text( ' лв.');
$printer -> feed();
$printer -> text($date);
$printer -> feed(2);
//$printer -> text($time);

	$r->free(); // Free up the resources.
	unset($r);

} else { // If no records were returned.

	echo '<p class="error">There are currently no registered users.</p>';

}



$query="select * from tblorderaddresses join tbluser on tbluser.ID=tblorderaddresses.UserId where tblorderaddresses.Ordernumber=245989610";

$r = $mysqli->query($query);

// Count the number of returned rows:
$num = $r->num_rows;
    
if ($num > 0) { // If it ran OK, display the records.


// Fetch and print all the records:
	while ($row = $r->fetch_object()) {
$printer -> text("Адрес за доставка:");
$printer -> feed();
$printer -> text("Поръчка Н:");
$printer -> text($row->Ordernumber);
$printer -> feed();
	$printer -> text("Име: ");
    $printer -> text($row->FirstName." " .$row->LastName ); 
	//$printer -> text( ' лв.');
$printer -> feed();

$printer -> text("Тел: 0");
$printer -> text($row->Phone);
$printer -> feed();

$printer -> text("Град: ");
$printer -> text($row->City);
$printer -> feed();



$printer -> text("Улица: ");
$printer -> text($row->StreetName);
$printer -> feed();



$printer -> text("Бележка: ");
$printer -> text($row->About);
$printer -> feed();

	}

$r->free(); // Free up the resources.
	unset($r);

} else { // If no records were returned.

	echo '<p class="error">There are currently no registered users.</p>';

}

$mysqli->close();
unset($mysqli);
	//$name = $item['ItemName'];
	//$price = $item['ItemPrice']
    //$printer -> text("$name\n");
  //  $printer -> text($item->product_name,"\n");
 //   $printer -> text($item->qty);
 //   $printer -> text($item->price);
//	$printer -> text($item->price*$item->qty);
//}
//$printer -> setEmphasis(true);
//$printer -> text($item->price*$item->qty);
//$printer -> setEmphasis(false);
//$printer -> feed();
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



$printer -> feed(2);
$printer -> cut();

/* Font modes */

$printer -> close();
