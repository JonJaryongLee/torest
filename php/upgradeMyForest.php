<?php 
error_reporting(E_ALL);

ini_set("display_errors", 1);
session_start();
header("Content-Type:application/json");
// DB 접속  
$con=mysqli_connect("localhost","torest","team14torest","torest");  
// 접속 실패 시 메시지 나오게 하기  
if (mysqli_connect_errno($con))  
{ echo "MySQL접속 실패: " . mysqli_connect_error(); }  
// 기본 클라이언트 문자 집합 설정하기  
mysqli_set_charset($con,"utf8");  

$location = mysqli_query($con, "select distinct location from manage where id= '".$_SESSION["ses_username"]."' and location between 0 and 8");

//매니지 테이블에서 아이디가 현재유저이고 로케이션이 0~8 사이인것만 추출 

$total_locations = [0,1,2,3,4,5,6,7,8]; 

$locations = [];
while($row = mysqli_fetch_array($location)) {
    $locations[] = $row['location'];
} // $locations 배열에 쿼리($location= 현재유저의 로케이션 추출값을 담음)

$result = array_diff($total_locations, $locations);
// $total_locations 배열과 $locations 배열  비교해서 중복인 location값들 제거

//VALUES ('".$_SESSION["ses_username"]."', (select itemNum from item order by rand() limit 1), ".$value.")";

foreach ($result as $value){
$sql = "INSERT INTO manage (ID, itemNum, location) 
VALUES ('".$_SESSION["ses_username"]."', (select itemNum from item where itemNum != 'i000' order by rand() limit 1), ".$value.")";
	mysqli_query($con, $sql);
}//반복삽입 (result요소 갯수만큼) , 아이디에는 현재접속자 , item은 item테이블에서 랜덤으로 한개( i000-불은제외),location에는 $result 배열 요소 삽입 


$cnt = rand(9, 9);
$res1 = mysqli_query($con, "select * from manage left join item on manage.itemNum = item.itemNum where id = '".$_SESSION["ses_username"]."' order by rand() LIMIT $cnt");
 

//현재 아이디가 가지고 있는 아이템 정보 
    $result2 = array();
    $item = array();

              while($row = mysqli_fetch_array($res1)) { 
              array_push($item, array('itemNum'=>$row[1],'itemLocation'=>$row[5],'itemName'=>$row[4],'location'=>$row[2]));
          		}
                $result2['item'] = $item; // 수정후 현재 아이디가 가지고있는 아이템정보 반환. 

    echo json_encode($result2,JSON_UNESCAPED_UNICODE);
    
// DB 접속 종료 
mysqli_close($con);  
?>

