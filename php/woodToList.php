<?php 

session_start();// 세션변수사용을 위함 
header("Content-Type:application/json");// json 사용하기위해 쓰는 코드
// DB 접속  
$host = 'localhost'; 
    $user = 'torest';
    $pw = 'team14torest';
    $dbName = 'torest';
    $con = new mysqli($host, $user, $pw, $dbName);
    //접속한 DB를 $con으로 설정  
    mysqli_set_charset($con,"utf8");
    // 기본 클라이언트 문자 집합 설정하기

    $POST = JSON_DECODE(file_get_contents("php://input"), true);
    //vue.js에서 json으로 넘어오기 때문에 다시 decode 해주는 과정 

    $location = $POST['location'];
    // post로 넘어온 location을 변수로 지정 

    mysqli_query($con, "UPDATE manage SET location = -1 where location = $location and id = '".$_SESSION["ses_username"]."'");
    //현재접속한 DB($con) , manage 테이블에서 location이 $location(현재넘어온 값)과 현재접속한 id(세션변수로 로그인시 생성됨!)와 같으면 location을 -1로 바꿈


    $res1 = mysqli_query($con, "select * from manage left join item on manage.itemNum = item.itemNum where id = '".$_SESSION["ses_username"]."'");

    $result = array();
    $item = array();

                while($row = mysqli_fetch_array($res1)) { 
                array_push($item, array('itemNum'=>$row[1],'itemLocation'=>$row[5],'itemName'=>$row[4],'location'=>$row[2]));
                }
                $result['item'] = $item; //업데이트 . 

    echo json_encode($result,JSON_UNESCAPED_UNICODE);   

mysqli_close($con);

?>
