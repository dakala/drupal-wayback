<?php

$mod = $_GET['mod'];

include_once "includes/common.inc";
module_execute($mod, "page");

?>
