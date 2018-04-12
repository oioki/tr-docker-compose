<?php

session_start();

# create or increment 'count' session variable
if (!isset($_SESSION['count']))
{
    $_SESSION['count'] = 0;
}
$_SESSION['count']++;

# prepare app data
$data = [
    'date' => date('Y-m-d'),
    'ip_address' => $_SERVER['REMOTE_ADDR'],
];

# render app data
print json_encode($data);
