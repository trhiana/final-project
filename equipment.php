<?php
include_once('phpGrid/conf.php');
$_GET['currentPage'] = 'equipment';
include_once('menu.php');
require('authenticate.php');

$equipment_info = new C_DataGrid('SELECT BranchId, EquipmentId, EmployeeId, EquipmentName, 
Date_of_Last_Service, Date_of_Next_Service FROM equipment', 'EquipmentId', 'equipment');
$equipment_info -> set_sortname('EquipmentId', 'DESC');
$equipment_info -> set_col_hidden('id', false);

// setting the column headings
$equipment_info -> set_col_title('EquipmentId', 'Equipment ID');
$equipment_info -> set_col_title('BranchId', 'Branch ID');
$equipment_info -> set_col_title('EmployeeId', 'Employee ID');
$equipment_info -> set_col_title('EquipmentName', 'Equipment Name');
$equipment_info -> set_col_title('Date_of_Last_Service', 'Date of Last Service');
$equipment_info -> set_col_title('Date_of_Next_Service', 'Date of Next Service');

$equipment_info -> enable_edit('FORM');
//$equipment_info -> set_pagesize(100);

// setting the width of columns
$equipment_info ->set_col_width('EquipmentId', '40px');
$equipment_info ->set_col_width('BranchId', '35px');
$equipment_info ->set_col_width('EmployeeId', '35px');
$equipment_info ->set_col_width('EquipmentName', '55px');
$equipment_info ->set_col_width('Date_of_Last_Service', '55px');
$equipment_info ->set_col_width('Date_of_Next_Service', '55px');
$equipment_info ->set_col_width('Phone_Number', '55px');

$equipment_info -> enable_edit('FORM');
$equipment_info -> display();
