<?php 

session_start();
header("Content-Type:application/json"); 
// DB 접속  1
$host = 'localhost'; 
    $user = 'root';
    $pw = '**uplus1214';
    $dbName = 'torest';
    $con = new mysqli($host, $user, $pw, $dbName);
    mysqli_set_charset($con,"utf8");
// 기본 클라이언트 문자 집합 설정하기  
//mysqli_set_charset($con,"utf8");  
$POST = JSON_DECODE(file_get_contents("php://input"), true);
$location = $POST['location'];
$selectedItem = $POST['selectedItem'];

$res1 = mysqli_query($con, "select * from manage where location = $location and id = '".$_SESSION["ses_username"]."'");

$res2 = mysqli_query($con, "select * from manage left join item on manage.itemNum = item.itemNum where item.itemName = '$selectedItem' and location = -1 and id = '".$_SESSION["ses_username"]."'");


$row = mysqli_fetch_array($res1);//놔둬야 하는애들

if ($row != null) {                                
	mysqli_query($con, "UPDATE manage SET location = -1 where location = $location and id = '".$_SESSION["ses_username"]."'");
        } // 로케이션이 -1 없는애들 이면 

$row = mysqli_fetch_array($res2);
	mysqli_query($con, "UPDATE manage SET location = $location WHERE id = '".$_SESSION["ses_username"]."' and itemNum = '$row[1]' and location = $row[2] "); // 수정 

$res3 = mysqli_query($con, "select * from manage left join item on manage.itemNum = item.itemNum where id = '".$_SESSION["ses_username"]."'");

$result = array();
 $item = array();

            while($row = mysqli_fetch_array($res3)) { 
            array_push($item, array('itemNum'=>$row[1],'itemLocation'=>$row[5],'itemName'=>$row[4],'location'=>$row[2]));
            }
            $result['item'] = $item; //업데이트 . 

echo json_encode($result,JSON_UNESCAPED_UNICODE);
mysqli_close($con);

