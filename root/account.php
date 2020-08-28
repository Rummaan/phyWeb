<?php
include("db.php");
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
if (isset($_POST['name']) && isset($_POST['uid'])) {
    try {
        $uid = $_POST['uid'];
        $name = $_POST['name'];
        $type = 'student';
        $sql = 'INSERT INTO accounts (`uid`,`name`,`type`) VALUES ( :uidOf, :nameOf, :typeOf)';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':uidOf', $uid);
        $stmt->bindParam(':nameOf', $name);
        $stmt->bindParam(':typeOf', $type);
        $stmt->execute();
        exit('success');
    } catch (PDOException $e) {
        exit($e);
    }
}
