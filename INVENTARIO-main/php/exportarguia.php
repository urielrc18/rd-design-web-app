<?php
require('pdfexport/fpdf.php');

class PDF extends FPDF
{
// Cabecera de página
function Header()
{
    // Logo
    $this->Image('LOGO.png',10,8,33);
    // Arial bold 15
    $this->SetFont('Arial','B',18);
    // Movernos a la derecha
    $this->Cell(70);
    // Título
    $this->Cell(50,15,utf8_decode('Guía de Venta'),0,0,'C');
    // Salto de línea
    $this->Ln(20);
}

// Pie de página
function Footer()
{
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Número de página
    $this->Cell(0,10,utf8_decode('Page ').$this->PageNo().'/{nb}',0,0,'C');
}
}
require ('exportarguia-conecction.php');
$consulta="SELECT * FROM guias";
$resultado=$mysqli->query($consulta);

$pdf=new PDF();
$pdf->AddPage();
$pdf->AliasNbPages();
$pdf->SetFont('Arial','i',14);



$row=$resultado->fetch_assoc();
$pdf->Cell(90,10,$row['prd1'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd1'],1,0,'L');
$pdf->Ln(10);
$pdf->Cell(90,10,$row['prd2'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd2'],1,0,'L');
$pdf->Ln(10);
$pdf->Cell(90,10,$row['prd3'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd3'],1,0,'L');
$pdf->Ln(10);
$pdf->Cell(90,10,$row['prd4'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd4'],1,0,'L');
$pdf->Ln(10);
$pdf->Cell(90,10,$row['prd5'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd5'],1,0,'L');
$pdf->Ln(10);
$pdf->Cell(90,10,$row['prd6'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd6'],1,0,'L');
$pdf->Ln(10);
$pdf->Cell(90,10,$row['prd7'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd7'],1,0,'L');
$pdf->Ln(10);
$pdf->Cell(90,10,$row['prd8'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd8'],1,0,'L');
$pdf->Ln(10);
$pdf->Cell(90,10,$row['prd9'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd9'],1,0,'L');
$pdf->Ln(10);
$pdf->Cell(90,10,$row['prd10'],1,0,'L');
$pdf->Cell(90,10,$row['precio_prd10'],1,0,'L');
$pdf->Ln(10);


$pdf->Output();


?>