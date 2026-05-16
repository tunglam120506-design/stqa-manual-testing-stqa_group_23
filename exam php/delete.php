<?php
require "connection.php";
require "item_sale.php";

$id = $_GET["id"] ?? null;

if ($id !== null) {
    deleteItem($id, $pdo);
    header("Location: v_store.php");
    exit();
} else {
    echo "Invalid ID";
}




function deleteItem($id, $conn) {
    try {
        $sql = "DELETE FROM item_sale WHERE id = :id";
        $sttm = $conn->prepare($sql);
        $sttm->execute(["id" => $id]);
        echo "Delete success";
    } catch (PDOException $e) {
        echo "Delete error: " . $e->getMessage();
    }
}

?>
