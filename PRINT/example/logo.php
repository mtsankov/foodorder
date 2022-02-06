<?php
require  '../autoload.php';
use Mike42\Escpos\Printer;
use Mike42\Escpos\EscposImage;
//use Mike42\Escpos\PrintConnectors\FilePrintConnector;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;

/* Fill in your own connector here */
//$connector = new FilePrintConnector("php://stdout");
//use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
$connector = new WindowsPrintConnector("ZJ-58");
//$printer = new Printer($connector);


/* Information for the receipt */
//$items = array(
  //  new item("Example item #1", "4.00"),
   // new item("Another thing", "3.50"),
   // new item("Something else", "1.00"),
   // new item("A final item", "4.45"),
//);
$subtotal =  '12.95';
$tax =  '1.30';
$total =  '14.25';
/* Date is kept the same for testing */
// $date = date('l jS \of F Y h:i:s A');
$date = "Monday 6th of April 2015 02:56:25 PM";

/* Start the printer */
 $logo = EscposImage::load("resources/rawbtlogo.png", false);
    $printer = new Printer($connector);
$printer -> initialize();

    /* Print top logo */
  
       // $printer->graphics($logo);
 
   
        $printer->bitImage($logo);
    

/* Cut the receipt and open the cash drawer */
$printer -> cut();
$printer -> pulse();

$printer -> close();

/* A wrapper to do organise item names & prices into columns */


