<?php
    $db = new PDO('sqlite:/home/pi/has001/has.db');
    
    $result = $db->query('SELECT * FROM kitchen');

    $result->setFetchMode(PDO::FETCH_ASSOC);
    while ($row = $result->fetch())
    {
        $datapie[] = $row;
    }
    $data = json_encode($datapie);
    echo $data;
?>
