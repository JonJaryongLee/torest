
<?php
error_reporting(E_ALL);

ini_set("display_errors", 1);
session_start();
header("Content-Type:application/json");
$host = 'localhost';
$user = 'root';
$pw = '**uplus1214';
$dbName = 'torest';
$con = new mysqli($host, $user, $pw, $dbName);

mysqli_set_charset($con,"utf8");
$_POST = JSON_DECODE(file_get_contents("php://input"), true); //mysql로 접근 하도록 설정
$score = $_POST["score"];
$userGrade = $_POST["userGrade"];
$today = date("Ymd");

//$sql = "insert into test (ID,날짜,점수)";             // (입력받음)insert into 테이블명 (column-list)
//$sql = $sql."values('$_SESSION["ses_username"]','$today','$score')";         // calues(column-list에 넣을 value-list)

$sql = "INSERT INTO test (ID, 날짜, 점수) 
VALUES ('".$_SESSION["ses_username"]."', ".$today.", ".$score.")";
mysqli_query($con, $sql);

$res1 = mysqli_query($con, "UPDATE user SET 등급 = '".$userGrade."' where id = '".$_SESSION["ses_username"]."'");

    $response = '';

    if ($sql) {
        if($res1){
        $response = 'success';
        }else{$response = 'fail';}   
     }else{
        $response = 'fail';  
    }

echo json_encode($response);

mysqli_close($con);
?>


