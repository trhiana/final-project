<?php
include_once('phpGrid/conf.php');
$_GET['currentPage'] = 'branches';
include_once('menu.php');
require('authenticate.php');

// retrieve data from the database
$branch_info = new C_DataGrid('SELECT BranchId, Branch_Name, Location FROM branch', 'BranchId', 'branches');
//$sql = 'SELECT BranchId, Branch_Name, Location from branch';
$branch_info -> set_sortname('BranchId', 'DESC');
$branch_info -> set_col_hidden('id', false);

// setting column headings
$branch_info -> set_col_title('Branch_Name', 'Branch Name');
$branch_info -> set_col_title('BranchId', 'Branch Id');
$branch_info -> set_col_title('Location', 'Location');

$branch_info -> enable_edit('FORM');
$branch_info -> set_pagesize(10);

// setting the size of the columns
$branch_info -> set_col_width('Branch_Name', '50px');
$branch_info -> set_column_width('BranchId', '35px');
$branch_info -> set_column_width('Location', '35px');

$branch_info -> enable_edit('FORM');

$branch_info -> display();

?>

<script>
    $(function(){
        $('.add-new-row').on('click', function(){
           $('#add_branches').click();
        });
    });
</script>
