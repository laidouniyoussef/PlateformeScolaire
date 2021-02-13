<?php
session_start();
ini_set('memory_limit', '2000M');
require_once 'Classes/PHPExcel.php';
require_once 'Classes/PHPExcel/IOFactory.php';

if (isset($_FILES["file"])) {
    $name = explode(".",$_FILES["file"]["name"]);
    $_SESSION['name']=$name[0];
    $file = "files/".basename($_FILES["file"]["name"]);
    move_uploaded_file($_FILES["file"]["tmp_name"], $file);

    $valid = false;
    $types = array('Excel2007', 'Excel5');
    foreach ($types as $type) {
        $reader = PHPExcel_IOFactory::createReader($type);
        if ($reader->canRead($file)) {
            $valid = true;
            break;
        }
    }
    
    if ($valid) {
        
        $objReader = PHPExcel_IOFactory::createReader('Excel2007');
        $objPHPExcel = $objReader->load($file);
    
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'CSV');    
    
        $index = 0;
        //array_values();
        $data = Array();
        foreach ($objPHPExcel->getWorksheetIterator() as $worksheet) {
    
            $objPHPExcel->setActiveSheetIndex($index);
            
            $sheetData = $worksheet->toArray(null, true, true, true);
            
            $result = Array();
            $keys = $sheetData[1];
            for ($i = 2; $i < count($sheetData); $i++) {
                $rowValue = Array();
                $row = $sheetData[$i];
                foreach($row as $key=>$value) {
                    if ($keys[$key] != "") {
                        $rowValue[$keys[$key]] = $value;
                    }
                }
                // for ($j = 0; $j < count($row); $j++) {
                    
                // }
                $result[] = $rowValue;
            }
            $filename=explode(".",$_FILES["file"]["name"]);
            $data[str_replace(array("-"," "), "_", $filename[0])] = $result;
            
            $index++;
        }
        $filename=explode(".",$_FILES["file"]["name"]);
        $xml = array2xml($data[$filename[0]], false);
        print_r($xml);
        } else {
            echo "{\"status\":\"Error\", \"reason\":\"Not Valid Excel file.\"}";
        }
            
        } 

function array2xml($array, $xml = false){

    if($xml === false){
        $filename=explode(".",$_FILES["file"]["name"]);
        $xml = new SimpleXMLElement('<?xml version="1.0" encoding="utf-8" ?><'.$filename[0].'/>');
    }

    foreach($array as $key => $value){
        if(is_array($value)){
        $filename=explode(".",$_FILES["file"]["name"]);
        $finalname=str_split($filename[0], strlen($filename[0]) - 1 );
        if ($finalname[1] == "s") {
             array2xml($value, $xml->addChild($finalname[0]));
        }else
        array2xml($value, $xml->addChild($filename[0]));
        } else {
            $xml->addChild($key, htmlspecialchars($value) );
            
        }
    }

    
    return $xml->asXML();

    
}

if(isset($_POST['submit'])){
    $text=$_POST['textarea'];
    $file = $_SESSION['name']."_GINF2.xml";
    $txt = fopen($file, "w") or die("Unable to open file!");
    fwrite($txt, $text);
    fclose($txt);

    header('Content-Description: File Transfer');
    header('Content-Disposition: attachment; filename='.basename($file));
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file));
    header("Content-Type: text/plain");
    readfile($file);
}