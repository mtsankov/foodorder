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

require  'PRINT/autoload.php';
include_once('includes/mysqli_oop_connect.php');


use  Mike42\Escpos\Printer;
use Mike42\Escpos\EscposImage;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;


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
$printer -> text("Дюнер Елена");
$printer -> feed();

$printer -> selectPrintMode();
$printer -> text("Телефон: 0887435876\n");
$printer -> feed(1);

$pid = $_GET['pid'];

$query="select tblfood.ItemName,
tblfood.ItemPrice, tblorders.date, tblorders.time 
from tblorders join tblfood on tblfood.ID=tblorders.FoodId where  tblorders.IsOrderPlaced=1
 and tblorders.OrderNumber=$pid";
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
$total = $total+ $row->ItemPrice;
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



$query="select * from tblorderaddresses join tbluser on tbluser.ID=tblorderaddresses.UserId where tblorderaddresses.Ordernumber=$pid";

$r = $mysqli->query($query);

// Count the number of returned rows:
$num = $r->num_rows;
    
if ($num > 0) { // If it ran OK, display the records.


// Fetch and print all the records:
	while ($row = $r->fetch_object()) {
$printer -> text("Адрес за доставка:");
$printer -> feed();
$printer -> text("Поръчка N:");
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


$printer -> feed();



$printer -> feed(2);
$printer -> cut();

/* Font modes */

$printer -> close();


header('location: my-order.php');