<?php
include_once('phpGrid/conf.php');
$_GET['currentPage'] = 'payments';
include_once('menu.php');
//require('authenticate.php');

$payment_data = new C_DataGrid('SELECT BranchId, PId, SupplierId, Service, Amount, Payment_to, 
Date_of_Payment FROM payments', 'PId', 'Payments');
$payment_data->set_sortname('PId', 'ASC');
$payment_data->set_col_hidden('id', false);

// setting the column headings
$payment_data->set_col_title('BranchId', 'Branch ID');
$payment_data->set_col_title('PId', 'Payment ID');
$payment_data->set_col_title('SupplierId', 'Supplier ID');
$payment_data->set_col_title('Payment_to', 'Payment To');
$payment_data->set_col_title('Date_of_Payment', 'Date of Payment');

$payment_data->enable_edit('FORM');
$payment_data->set_pagesize(100);

// setting the width of columns
$payment_data->set_col_width('BranchId', '50px');
$payment_data->set_col_width('PId', '50px');
$payment_data->set_col_width('SupplierId', '45px');
$payment_data->set_col_width('Date_of_Payment', '55px');


$payment_data->enable_edit('FORM');
$payment_data->display();