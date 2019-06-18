<?php
error_reporting(E_ALL);

ini_set("display_errors", 1);

session_start();// 세션변수사용을 위함 
header("Content-Type:application/json");// json 사용하기위해 쓰는 코드
// DB 접속  
    $host = 'localhost'; 
    $user = 'root';
    $pw = '**uplus1214';
    $dbName = 'torest';
    $con = new mysqli($host, $user, $pw, $dbName);

    //접속한 DB를 $con으로 설정  
    mysqli_set_charset($con,"utf8");

    $POST = JSON_DECODE(file_get_contents("php://input"), true);
    //vue.js에서 json으로 넘어오기 때문에 다시 decode 해주는 과정 

    $name = $POST["name"];
    // post로 넘어온 name을 변수로 지정 
    $res1 = mysqli_query($con, "UPDATE user SET name = '".$name."' where id = '".$_SESSION["ses_username"]."'");
    //현재접속한 DB($con) , user 테이블에서  현재접속한 id(세션변수로 회원가입시 생성됨!)와 같은것을에서 name을 $name으로 바꿈   
    
    $response = '';
    if ($res1) {
        $response = 'success';   
     }else{
        $response = 'fail';  
    }

    echo json_encode($response);

mysqli_close($con);

?>