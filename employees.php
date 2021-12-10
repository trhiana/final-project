<?php
include_once('phpGrid/conf.php');
$_GET['currentPage'] = 'employees';
include_once('menu.php');
require('authenticate.php');

$employee_info = new C_DataGrid('SELECT BranchId, EmployeeId, FirstName, MidInit, LastName, Gender, DOB, Telephone, Address, Salary FROM employee', 'EmployeeId', 'employee');
$employee_info->set_sortname('EmployeeId', 'DESC');
$employee_info->set_col_hidden('id', false);

// setting the column headings
$employee_info->set_col_title('EmployeeId', 'Employee ID');
$employee_info->set_col_title('BranchId', 'Branch ID');
$employee_info->set_col_title('FirstName', 'First Name');
$employee_info->set_col_title('MidInit', 'M');
$employee_info->set_col_title('LastName', 'Last Name');
$employee_info->set_col_title('Gender', 'Gender');
$employee_info->set_col_title('DOB', 'Date of Birth');
$employee_info->set_col_title('Telephone', 'Telephone');
$employee_info->set_col_title('Address', 'Address');
$employee_info->set_col_title('Salary', 'Salary');

$employee_info->enable_edit('FORM');
$employee_info->set_pagesize(100);

// setting the width of columns
$employee_info->set_col_width('EmployeeId', '50px');
$employee_info->set_col_width('BranchId', '35px');
$employee_info->set_col_width('FirstName', '40px');
$employee_info->set_col_width('MidInit', '20px');
$employee_info->set_col_width('LastName', '40px');
$employee_info->set_col_width('Gender', '35px');
$employee_info->set_col_width('DOB', '55px');
$employee_info->set_col_width('Telephone', '55px');
$employee_info->set_col_width('Address', '70px');
$employee_info->set_col_width('Salary', '45px');

$employee_info->enable_edit('FORM');
$employee_info->display();
