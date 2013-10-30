<?php

$input = $argv[1] ;

$postdata = http_build_query(
    array(
        'question' => $input,
    )
);

$opts = array('http' =>
    array(
        'method'  => 'POST',
        'header'  => 'Content-type: application/x-www-form-urlencoded; charset=UTF-8' 
        .  "\r\n" . "Cookie: ChatBot=639c1bef45cafa187c99b4a6fcee8d47;"
        ,
        'content' => $postdata
    )
);

$context  = stream_context_create($opts);

echo 
preg_replace('#^.+>(.*)$#', '$1', 
strip_tags(file_get_contents('http://waelin-chatbot.fr/core.php', false, $context)));