<?php

class User {
  function User($userid, $passwd = "") {
    $result = db_query("SELECT * FROM users WHERE LOWER(userid) = LOWER('$userid') && passwd = PASSWORD('$passwd') && STATUS = 2");
    if (db_num_rows($result) == 1) {
      foreach (db_fetch_row($result) as $key=>$value) { $field = mysql_field_name($result, $key); $this->$field = stripslashes($value); $this->field[] = $field; }
      db_query("UPDATE users SET last_access = '". time() ."', last_host = '$_SERVER[REMOTE_HOST]' WHERE id = $this->id");
    }
  }
}

function user_save($data, $id = 0) {
  global $user, $mysqli;
  $query = '';
  foreach ($data as $key => $value) {
    if ($key == "passwd") {
      // Use MySQL's PASSWORD() function, but note: it's deprecated and not recommended for new code.
      $query .= "$key = PASSWORD('" . $mysqli->real_escape_string($value) . "'), ";
    } else {
      $query .= "$key = '" . $mysqli->real_escape_string($value) . "', ";
    }
  }

  // Use REMOTE_ADDR for reliability; REMOTE_HOST is rarely set.
  $last_host = isset($_SERVER['REMOTE_HOST']) ? $_SERVER['REMOTE_HOST'] : $_SERVER['REMOTE_ADDR'];
  $last_access = time();

  if (empty($id)) {
    $query .= " last_access = '$last_access', last_host = '" . $mysqli->real_escape_string($last_host) . "'";
    db_query("INSERT INTO users SET $query last_access = '$last_access', last_host = '" . $mysqli->real_escape_string($last_host) . "'");
  } else {
    db_query("UPDATE users SET $query last_access = '$last_access', last_host = '" . $mysqli->real_escape_string($last_host) . "' WHERE id = " . intval($id));
    $result = db_query("SELECT * FROM users WHERE id = " . intval($id) . " AND status = 2");
    if (db_num_rows($result) == 1) {
      $row = db_fetch_array($result);
      foreach ($row as $key => $value) {
        $user->$key = stripslashes($value);
      }
    } else {
      $user = 0;
    }
  }
}

function user_getHistory($history, $field) {
  $data = explode(";", $history);
  for (reset($data); current($data); next($data)) {
    $entry = explode(":", current($data));
    if (reset($entry) == $field) $rval = end($entry);
  }
  return $rval;
} 

function user_setHistory(&$user, $field, $value) {

  $history = $user->history;
  if (!$value) {
    // remove entry:
    $data = explode(";", $history);
    for (reset($data); current($data); next($data)) {
      $entry = explode(":", current($data));
      if ($entry[0] != $field) $rval .= "$entry[0]:$entry[1];";
    }
  }
  else if (strstr($history, "$field:")) {
    // found: update exsisting entry:
    $data = explode(";", $history);
    for (reset($data); current($data); next($data)) {
      $entry = explode(":", current($data));
      if ($entry[0] == $field) $entry[1] = $value;
      $rval .= "$entry[0]:$entry[1];";
    } 
  }
  else {
    // not found: add new entry:
    $rval = "$history$field:$value;";
  }
  $user->history = $rval;

  // save new history:
  $query .= "UPDATE users SET ";
  foreach ($user->field as $key=>$field) { $value = $user->$field; $query .= "$field = '". addslashes($value) ."', "; }
  $query .= " id = $user->id WHERE id = $user->id";
  db_query($query);
}

function user_clean() {
  // todo -  called by cron job
}

?>