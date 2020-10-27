<?php

include("db.php");

if (isset($_POST['query'])) {
    try {
        $auto = $_POST['query'];
        $sem = $_POST['sem'];
        $query = '%' . $auto . '%';
        $sql = 'SELECT q FROM qa WHERE q LIKE :q AND sem = :sem LIMIT 5';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':q', $query);
        $stmt->bindParam(':sem', $sem);
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
