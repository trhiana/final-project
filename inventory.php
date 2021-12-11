<?php
include_once('phpGrid/conf.php');
$_GET['currentPage'] = 'inventory';
include_once('menu.php');
//require('authenticate.php');

$inventory_data = new C_DataGrid('SELECT BranchId, Product_Name, Quantity_delivered, Quantity_available, 
Minimum_quantity, Price FROM inventory', 'Product_Name', 'Inventory');
$inventory_data -> set_sortname('Product_Name', 'ASC');
$inventory_data -> set_col_hidden('id', false);

// setting the column headings
$inventory_data -> set_col_title('Product_Name', 'Product Name');
$inventory_data -> set_col_title('BranchId', 'Branch ID');
$inventory_data -> set_col_title('Quantity_available', 'Quantityb Available');
$inventory_data -> set_col_title('Quantity_delivered', 'Quantity Delivered');
// $inventory_data->set_col_title('Minimum_quantity', 'Minimum Quantity');

$inventory_data -> enable_edit('FORM');
//$inventory_data -> set_pagesize(100);

// setting the width of columns
$inventory_data -> set_col_width('Product_Name', '50px');
$inventory_data -> set_col_width('BranchId', '35px');
$inventory_data -> set_col_width('Quantity_delivered', '65px');
$inventory_data -> set_col_width('Quantity_available', '65px');
$inventory_data -> set_col_width('Minimum_quantity', '65px');

$inventory_data -> enable_edit('FORM');
$inventory_data -> display();