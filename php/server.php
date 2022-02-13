<?php
    include "connection.php";
    $page = isset($_GET['p'])?$_GET['p']:'';
    if($page == 'insert'){
        $name = $_POST['n'];
        $email = $_POST['em'];
        $password = $_POST['pass'];
        $adress = $_POST['ad'];
        $phone = $_POST['pn'];
        
        $query = "INSERT INTO crud_baza(`name`, `email`, `password_hash`, `phone`, `adress`)"
                . "VALUES(:name,:email,:password,:phone,:adress)";
        $stm = $db->prepare($query);
        $stm->bindParam(':name', $name);
        $stm->bindParam(':email', $email);
        $stm->bindParam(':password', $password);
        $stm->bindParam(':adress', $adress);
        $stm->bindParam(':phone', $phone);
        $stm->execute();
        
        print_r($stm);
        die;
    }
    elseif(isset($_POST['id']) && isset($_POST['id'])!=""){
        $user_id = $_POST['id'];
        $response = array();
        $stm = $db->prepare("SELECT * FROM crud_baza WHERE id = '$user_id'");
        $stm->execute();
        $row=$stm->fetch();
        echo json_encode($row);
    }
    elseif($page=='del'){
        $id = $_GET['id'];
        //neimenovani placeholder-i, mehanizam vezivanja
        $stm=$db->prepare("DELETE FROM crud_baza WHERE id=?");
        $stm->bindParam(1, $id);
        $stm->execute();
    }
    else{
    $stm = $db->prepare("SELECT * FROM crud_baza");
    $stm->execute();
    while($row = $stm->fetch())
    {
        echo '<tr><td>'.$row['id'].'</td>'
                . '<td>'.$row['name'].'</td>'
                . '<td>'.$row['email'].'</td>'
                . '<td>'.$row['phone'].'</td>'
                . '<td>'.$row['adress'].'</td>'
                .'<td><button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editModal" onclick="getUserDetails('.$row['id'].')">Edit</button>'
                . '<button type="button" class="btn btn-danger" onclick="deleteData('.$row['id'].')">Obrisi</button>'
                .'</td>'
                . '</tr>';
    }
    }