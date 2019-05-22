<?php 

session_start();
header("Content-Type:application/json"); 
// DB 접속  
$host = 'localhost'; 
    $user = 'torest';
    $pw = 'team14torest';
    $dbName = 'torest';
    $con = new mysqli($host, $user, $pw, $dbName);
    mysqli_set_charset($con,"utf8");
// 기본 클라이언트 문자 집합 설정하기  
//mysqli_set_charset($con,"utf8");  

//$res1 = mysqli_query($con, "select * from manage where location != -1 and id = '".$_SESSION["ses_username"]."'"); // 현재 사용자가 가지고 있는 로케이션 
//날리고 저장하고 채운다 !!

mysqli_query($con, "UPDATE manage SET itemNum = 'i000' where id = '".$_SESSION["ses_username"]."' and location != -1");

$res3 = mysqli_query($con, "select * from manage left join item on manage.itemNum = item.itemNum where id = '".$_SESSION["ses_username"]."'");

$result = array();
$item = array();

            while($row = mysqli_fetch_array($res3)) { 
            array_push($item, array('itemNum'=>$row[1],'itemLocation'=>$row[5],'itemName'=>$row[4],'location'=>$row[2]));
            }
            $result['item'] = $item; //업데이트 . 

echo json_encode($result,JSON_UNESCAPED_UNICODE);
mysqli_close($con);