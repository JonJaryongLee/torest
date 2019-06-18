<?php
        session_start();
        header("Content-Type:application/json"); 
    //$host = 'localhost'; 
    //$user = 'root';
    //$pw = '011051';
    //$dbName = 'opentutorials';
    $host = 'localhost'; 
    $user = 'root';
    $pw = '**uplus1214';
    $dbName = 'torest';
    $con = new mysqli($host, $user, $pw, $dbName);

    mysqli_set_charset($con,"utf8");
    $POST = JSON_DECODE(file_get_contents("php://input"), true); //mysql로 접근 하도록 설정
    $memberId = $POST["id"];
    $memberPw = $POST["pw"];
    $sql = "SELECT * FROM user WHERE id = '$memberId' AND pw = '$memberPw'"; //my sqli 연결의 끈을 생성시키고, 쿼리를 실행
      // member 테이블로부터 id와 pwd가 일치하는 것을 고른다.
    $res = $con->query($sql); //실행결과는 $res에 저장
    
        $row = $res->fetch_array(MYSQLI_ASSOC); // 넘어온 결과를 한 행씩 패치해서 $row라는 배열에 담는다.
        if ($row != null) {                                                //만약 배열에 존재한다면

            $_SESSION["ses_username"] = $row['id'];
            //echo $_SESSION["ses_username"].'님 가입 되셨습니다.<p/>';                            // 세션을 만들어준다. .
            //echo '<a href="./index.php">로그아웃 하기</a>'; 
            
            //$data = json_encode($row,JSON_UNESCAPED_UNICODE);
            //$json = $data . ',';
            //echo $json;     //여기 3줄은 json을 문자열로 반환하고 싶으면 사용 
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

        }
        // 결과를 배열로 변환하기 위한 변수 정의 
 
        else if($row == null){                                                    //만약 배열에 아무것도 없다면
            
         echo 'starterror';          //에러 화면으로 넘김
        }
 mysqli_close($con);
 
?>