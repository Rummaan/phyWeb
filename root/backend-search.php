<?php

include("db.php");

if (isset($_POST['query'])) {
    try {
        $auto = $_POST['query'];
        $query = '%' . $auto . '%';
        $sql = 'SELECT q FROM qa WHERE q LIKE :q LIMIT 5';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':q', $query);
        $stmt->execute();
        while ($row = $stmt->fetchObject()) {
            $data['value'] = $row->q;
            $result[] = $data['value'];
        }
        exit(json_encode($result));
    } catch (PDOException $e) {
        exit($e);
    }
}
