<?php
include("db.php");

if (isset($_POST['search'])) {
    try {
        $search_val = $_POST['search'];
        $sql = 'SELECT a FROM qa WHERE q = :q';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':q', $search_val);
        $stmt->execute();
        $row = $stmt->fetchObject();
        exit(json_encode($row->a));
    } catch (PDOException $e) {
        exit($e);
    }
}
