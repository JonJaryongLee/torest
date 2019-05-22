<?php
        session_start();
        header("Content-Type:application/json"); 
    //$host = 'localhost'; 
    //$user = 'root';
    //$pw = '011051';
    //$dbName = 'opentutorials';
    $host = 'localhost'; 
    $user = 'torest';
    $pw = 'team14torest';
    $dbName = 'torest';
    $con = new mysqli($host, $user, $pw, $dbName);

    mysqli_set_charset($con,"utf8");

            $res1 = mysqli_query($con, "select * from user where id = '".$_SESSION["ses_username"]."'");
            $res3 = mysqli_query($con, "select * from manage left join item on manage.itemNum = item.itemNum where id = '".$_SESSION["ses_username"]."'");
            $res5 = mysqli_query($con, "select * from test where id = '".$_SESSION["ses_username"]."'");
            
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

            //echo 
            json_encode($_SESSION["ses_username"],JSON_UNESCAPED_UNICODE);
            //echo '로그인 성공';
 mysqli_close($con);
 
?>