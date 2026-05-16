<?php
require "connection.php";
require "item_sale.php";


$id = $_REQUEST["id"] ?? -1;



$conn = $pdo;
$item_sale = getItemById($id, $conn);
print_r($item_sale);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $item_name = trim($_REQUEST["item_name"]);
    $item_code = trim($_REQUEST["item_code"]);
    $quantity = trim($_REQUEST["quantity"]);
    $expired_date = trim($_REQUEST["expired_date"]);
    $note = trim($_REQUEST["note"]);
    $id = trim($_REQUEST["id"]);
    

    
    if ($id < 0) {
        saveItem($item_code, $item_name,  $quantity, $expired_date, $note, $conn , $id);
    } else {
        editItem($item_code, $item_name ,  $quantity, $expired_date, $note, $conn, $id);
    }
}

function saveItem($item_name, $item_code, $quantity, $expired_date, $note, $conn) {
    try {
        $sql = "INSERT INTO item_sale (`item_code`,`item_name`, `quantity`, `expired_date`, `note`) VALUES (:item_code, :item_name , :quantity, :expired_date, :note)";
        $sttm = $conn->prepare($sql);
        $sttm->execute(["item_code" => $item_code, "item_name"=> $item_name,  "quantity" => $quantity, "expired_date" => $expired_date , "note"=>$note]);
        echo "Insert success";
    } catch (PDOException $e) {
        echo "Insert error: " . $e->getMessage();
    }
}

function editItem($item_code,$item_name,  $quantity, $expired_date, $note, $conn, $id) {
    try {
        $sql = "UPDATE item_sale SET item_code = :item_code,item_name = :item_name  quantity = :quantity, expired_date = :expired_date, note = :note WHERE id = :id";
        $sttm = $conn->prepare($sql);
        $sttm->execute(["item_code" => $item_code,"item_name" => $item_name,  "quantity" => $quantity, "expired_date" => $expired_date, "note" => $note, "id" => $id]);
        echo "Update success";
    } catch (PDOException $e) {
        echo "Update error: " . $e->getMessage();
    }
}





function getItemById($id, $conn) {
    try {
        $sql = "SELECT * FROM item_sale WHERE id = :id";
        $sttm = $conn->prepare($sql);
        $sttm->execute(["id" => $id]);
        $sttm->setFetchMode(PDO::FETCH_CLASS, "Item_sale");
        $item_sale = $sttm->fetch();
        return $item_sale;
    } catch (PDOException $e) {
        echo "Get item_sale error: " . $e->getMessage();
    }
    return null;
}
?>

<form method="POST">
    <input type="hidden" name="id" value='<?php echo !empty($item_sale) ? $item_sale->id : ""; ?>'>
    <h1>
        <span>Item code</span>
        <input type="text" name="item_code" value='<?php echo !empty($item_sale) ? $item_sale->item_code : ""; ?>'>
    </h1>

    <h1>
        <span>Item name</span>
        <input type="text" name="item_name" value='<?php echo !empty($item_sale) ? $item_sale->item_name : ""; ?>'>
    </h1>
    <h1>
        <span>Quantity</span>
        <input type="number" name="quantity" value='<?php echo !empty($item_sale) ? $item_sale->quantity : ""; ?>'>
    </h1>
    
    <h1>
        <span>Expired date</span>
        <input type="date" name="expired_date" value='<?php echo !empty($item_sale) ? date("Y-m-d", strtotime($item_sale->expired_date)) : ""; ?>'>
    </h1>

    <h1>
        <span>Note</span>
        <input type="text" name="note" value='<?php echo !empty($item_sale) ? $item_sale->note : ""; ?>'>
    </h1>
    <input type="submit" value="submit">
</form>
