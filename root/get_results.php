<?php
include("db.php");

if (isset($_POST['search'])) {
    try {
        $search_val = $_POST['search'];
        $sem = $_POST['sem'];
        $sql = 'SELECT a FROM qa WHERE q = :q AND sem = :sem';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':q', $search_val);
        $stmt->bindParam(':sem', $sem);
        $stmt->execute();
        $row = $stmt->fetchObject();
        exit(json_encode($row->a));
    } catch (PDOException $e) {
        exit($e);
    }
}
