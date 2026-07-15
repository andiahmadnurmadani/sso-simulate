<?php
$content = file_get_contents('knowledge_mgt_db.sql');
foreach (['positions', 'employee_position', 'job', 'job_i18n', 'department', 'directorate', 'user_detail'] as $t) {
    if (preg_match('/CREATE TABLE `'.$t.'` \((.*?)\) ENGINE/s', $content, $m)) {
        echo '=== '.$t.' ==='.PHP_EOL;
        echo $m[1].PHP_EOL;
    } else {
        echo '=== '.$t.' === not found'.PHP_EOL;
    }
}
