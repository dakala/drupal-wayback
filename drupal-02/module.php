<?php

include_once "includes/common.inc";

extract($_GET, EXTR_OVERWRITE);
extract($_POST, EXTR_OVERWRITE);
$mod = isset($_GET['mod']) ? $_GET['mod'] : '';

if ($mod) module_execute($mod, "page");

?>
