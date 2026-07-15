<?php
$content = file_get_contents('knowledge_mgt_db.sql');
preg_match_all('/CREATE TABLE `([^`]+)`/', $content, $matches);
foreach ($matches[1] as $table) {
    echo $table . PHP_EOL;
}
