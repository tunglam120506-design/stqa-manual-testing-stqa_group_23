<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<h1>V_Store  /  Items</h1>









<?php
require "connection.php";
require "item_sale.php";
try{
    $sql = "select * from item_sale";
    $sttm = $pdo->prepare($sql);
    $sttm->execute();
    $sttm->setFetchMode(PDO::FETCH_CLASS,"Item_sale");
    $items = $sttm->fetchAll();

} catch(PDOException $e) {
    echo "get item_sale error ".$e->getMessage();
}


?>

<button><a href="form.php">Add Item</a></button>


<table style="width: 1000px;" border="1">

    <tr>
        <th>Id</th>
        <th>Item Code</th>
        <th>Item Name</th>
        <th>Quantity</th>
        <th>Expired Date</th>
        <th>Note</th>

        <th></th>
    </tr>

    <?php foreach($items as $item) : ?>


    <tr>
        <th><?=$item->id ?></th>
        <th><?=$item->item_code ?></th>
        <th><?=$item->item_name ?></th>
        <th><?=$item->quantity ?></th>
        <th><?=$item->expired_date ?></th>
        <th><?=$item->note ?></th>
        <th><a href="form.php?id=<?php echo $item->id ?>"> Edit </a> || <a href="delete.php?id=<?php echo $item->id ?>">Delete</a> </th>
    </tr>

    <?php endforeach ?>

    
</table>












</body>
</html>



















