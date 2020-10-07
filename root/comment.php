<?php
include("db.php");

try{
    if(isset($_POST['q'])){
        $q = $_POST['q'];
        $name = $_POST['name'];
        $uid = $_POST['uid'];
        $sql = 'INSERT INTO `question` (`q`, `name`, `uid`) VALUES (:q, :n, :u)';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':q', $q);
        $stmt->bindParam(':n', $name);
        $stmt->bindParam(':u', $uid);
        $stmt->execute();
        exit('success');
    }
    else if(isset($_POST['r'])){
        $r = $_POST['r'];
        $qid = $_POST['qid'];
        $name = $_POST['name'];
        $uid = $_POST['uid'];
        $sql = 'INSERT INTO `reply` (`r`, `qid`, `name`, `uid`) VALUES (:r, :qid, :n, :u)';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':r', $r);
        $stmt->bindParam(':qid', $qid);
        $stmt->bindParam(':n', $name);
        $stmt->bindParam(':u', $uid);
        $stmt->execute();
        exit('success');
    }
    else if(isset($_POST['l'])){
        $l = $_POST['l'];
        $sql = 'SELECT * FROM question ORDER BY qid DESC';
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        while ($row = $stmt->fetchObject()) {
            $data['qid'] = $row->qid;
            $data['q'] = $row->q;
            $data['name'] = $row->name;
            $data['uid'] = $row->uid;
            $sql2 = 'SELECT * FROM reply WHERE qid = :qid';
            $stmt2 = $conn->prepare($sql2);
            $stmt2->bindParam(':qid', $row->qid);
            $stmt2->execute();
            while ($row2 = $stmt2->fetchObject()) {
                $data2['name'] = $row2->name;
                $data2['r'] = $row2->r;
                $data['replies'][] = $data2; 
            }
            $result[] = $data;
            $data['replies'] = null;
        }
        exit(json_encode($result));
    }
}catch(PDOException $e){
    exit($e);
}
