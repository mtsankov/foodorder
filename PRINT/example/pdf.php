<?php
//require __DIR__ . '/vendor/autoload.php';
///use Mike42\Escpos\Printer;
use Mike42\Escpos\ImagickEscposImage;
//use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;

require  '../autoload.php';
use Mike42\Escpos\Printer;
//use Mike42\Escpos\PrintConnectors\FilePrintConnector;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;

//$connector = new FilePrintConnector("php://stdout");




$pdf = 'example.pdf';
$connector = new WindowsPrintConnector("ZJ-58");
$printer = new Printer($connector);



$printer -> initialize();

 catch (Exception $e) {
  /*
     * loadPdf() throws exceptions if files or not found, or you don't have the
     * imagick extension to read PDF's
     */
    echo $e -> getMessage() . "\n";
} finally {
	$printer->cut();
    $printer -> close();
}

