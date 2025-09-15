<?php

class Story {
  function Story($userid, $subject, $abstrakt, $article, $section, $timestamp) {
    $this->userid = $userid;
    $this->subject = $subject;
    $this->abstrakt = $abstrakt;
    $this->article = $article;
    $this->section = $section;
    $this->timestamp = $timestamp;
  }
}

function story_visible($story) {
  global $user;
  return ($story->status == 2) || ($story->status == 1 && $user->id) || user_access($user, "story");
}

?>