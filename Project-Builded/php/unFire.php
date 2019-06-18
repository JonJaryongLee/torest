<?php 

session_start();
header("Content-Type:application/json"); 
// DB 접속  
    $host = 'localhost'; 
    $user = 'root';
    $pw = '**uplus1214';
    $dbName = 'torest';
    $con = new mysqli($host, $user, $pw, $dbName);
    mysqli_set_charset($con,"utf8");
// 기본 클라이언트 문자 집합 설정하기  

$res1 = mysqli_query($con, "delete from manage where id = '".$_SESSION["ses_username"]."'");

$response  = '';
if ($res1) {
    $response = 'success';   
 }else{
    $response = 'fail';  
}

echo json_encode($response);

mysqli_close($con);
?>