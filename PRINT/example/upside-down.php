<?php
/* Demonstration of upside-down printing */
require '../autoload.php';
use Mike42\Escpos\Printer;
use Mike42\Escpos\PrintConnectors\FilePrintConnector;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
//$connector = new FilePrintConnector("php://stdout");
//$printer = new Printer($connector);

$connector = new WindowsPrintConnector("ZJ-58");
$printer = new Printer($connector);

$t = '12.95';
$printer -> text("$t\n");
// Most simple example
$printer -> text("Hello\n");
$printer -> setUpsideDown(true);
$printer -> text("World\n");
$printer -> cut();
$printer -> close();

