<?php

$mysqli_link = null;

function db_connect($host, $user, $pass, $name) {
  global $mysqli_link;
  $mysqli_link = mysqli_connect($host, $user, $pass, $name) or die(mysqli_connect_error());
  // NOTE: mysqli_connect uses non-persistent connections by default.
}

function db_query($query, $debug = false) {
  global $mysqli_link;
  $qid = mysqli_query($mysqli_link, $query);
  if ($debug) print "<PRE>query: ". htmlspecialchars($query) ."<BR>error message: ". mysqli_error($mysqli_link) ."</PRE>";
  if (!$qid) watchdog("error", "database: ". mysqli_error($mysqli_link) ."<BR>query: ". htmlspecialchars($query) ."");

  return $qid;
}

function db_fetch_object($qid) {
  if ($qid) return mysqli_fetch_object($qid);
}

function db_num_rows($qid) {
  if ($qid) return mysqli_num_rows($qid);
}

function db_fetch_row($qid) {
  if ($qid) return mysqli_fetch_row($qid);
}

function db_fetch_array($qid) {
  if ($qid) return mysqli_fetch_array($qid, MYSQLI_ASSOC);
}

function db_result($qid, $field = 0) {
  if ($qid && mysqli_num_rows($qid)) {
    mysqli_data_seek($qid, 0);
    $row = mysqli_fetch_row($qid);
    return isset($row[$field]) ? $row[$field] : null;
  }
}

function db_insert_id() {
  global $mysqli_link;
  return mysqli_insert_id($mysqli_link);
}

// Setup database connection:
db_connect($db_host, $db_user, $db_pass, $db_name);

?>