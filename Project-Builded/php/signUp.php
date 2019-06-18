

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
$_POST = JSON_DECODE(file_get_contents("php://input"), true); //mysql로 접근 하도록 설정



    $memberId = $_POST["id"];
    $memberPw = $_POST["pw"];
	$_SESSION["ses_username"] = $memberId;

    echo $_POST["id"];
    echo $_POST["pw"];

 $sql = "insert into user (id,pw)";             // (입력받음)insert into 테이블명 (column-list)
 $sql = $sql. "values('$memberId','$memberPw')";         // calues(column-list에 넣을 value-list)
 if($con->query($sql)){                                                              //만약 sql로 잘 들어갔으면
  echo $_SESSION["ses_username"].'님 가입 되셨습니다.<p/>';                                   // id님 안녕하세요.

  			$res1 = mysqli_query($con, "select * from user where id = '$memberId' ");
            $res3 = mysqli_query($con, "select * from manage left join item on manage.itemNum = item.itemNum where id = '$memberId' ");
            $res5 = mysqli_query($con, "select * from test where id = '$memberId' ");
            
            $result = array(); 

            $row = mysqli_fetch_array($res1); 
            $result['name'] = $row[2];
            $result['profile'] = $row[3];
            $result['grade'] = $row[7];
          
            $item = array();

            while($row = mysqli_fetch_array($res3)) { 
            array_push($item, array('itemNum'=>$row[1],'itemLocation'=>$row[5],'itemName'=>$row[4],'location'=>$row[2]));
            }
            $result['item'] = $item;
           
            $chartData = array();
           
            while($row = mysqli_fetch_array($res5)) { 
            array_push($chartData, array('날짜' => $row[1], '점수' => $row[2]));
            }

            $result['chartData'] = $chartData; 

            //echo $result['name'];

            echo json_encode($result,JSON_UNESCAPED_UNICODE);

            //echo json_encode($_SESSION["ses_username"],JSON_UNESCAPED_UNICODE);
            //echo '로그인 성공';
 }else{                                                                                //아니면
  echo 'fail to insert sql';                                                            //fail to insert sql로 표시
 }
mysqli_close($con);
 
 
?>


