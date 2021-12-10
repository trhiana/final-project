<?php
include_once('phpGrid/conf.php');
$_GET['currentPage'] = 'suppliers';
include_once('menu.php');
require('authenticate.php');

$supplier_info = new C_DataGrid('SELECT BranchId, SupplierId, Name, Phone_Number, Address, Quantity_delivered, Delivery_date FROM suppliers', 'SupplierId', 'suppliers');
$supplier_info->set_sortname('SupplierId', 'DESC');
$supplier_info->set_col_hidden('id', false);

// setting the column headings
$supplier_info->set_col_title('SupplierId', 'Supplier ID');
$supplier_info->set_col_title('BranchId', 'Branch ID');
$supplier_info->set_col_title('Delivery_date', 'Delivery Date');
$supplier_info->set_col_title('Quantity_delivered', 'Quantity Delivered');
$supplier_info->set_col_title('Phone_Number', 'Telephone');

$supplier_info->enable_edit('FORM');
$supplier_info->set_pagesize(100);

// setting the width of columns
$supplier_info->set_col_width('SupplierId', '50px');
$supplier_info->set_col_width('BranchId', '35px');
$supplier_info->set_col_width('Quantity_delivered', '65px');
$supplier_info->set_col_width('Delivery_date', '55px');
$supplier_info->set_col_width('Phone_Number', '55px');

$supplier_info->enable_edit('FORM');
$supplier_info->display();