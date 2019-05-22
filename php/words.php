<?php 
session_start();
header("Content-Type:application/json");
// DB 접속  
$con=mysqli_connect("localhost","torest","team14torest","torest");  
// 접속 실패 시 메시지 나오게 하기  
if (mysqli_connect_errno($con))  
{ echo "MySQL접속 실패: " . mysqli_connect_error(); }  
// 기본 클라이언트 문자 집합 설정하기  
mysqli_set_charset($con,"utf8");  
// 쿼리문 실행, 결과를 res에 저장
$cnt = rand(10, 10);  
// 랜덤 order by rand()   

$res = mysqli_query($con, "select 번호,단어명,발음기호,뜻,단어수준,이미지 from word,user where 등급=단어수준 and id= '".$_SESSION["ses_username"]."' order by rand() LIMIT $cnt"); 

// 결과를 배열로 변환하기 위한 변수 정의 
$result = array();  
// 쿼리문의 결과(res)를 배열형식으로 변환(result)  
while($row = mysqli_fetch_array($res)) { 
  array_push($result, array('wordName'=>$row[1],'wordPrononciation'=>$row[2],'wordMeaning'=>$row[3],'level'=>$row[4],'wordImg'=>$row[5])); 
}  
// 배열형식의 결과를 json으로 변환  
echo json_encode($result,JSON_UNESCAPED_UNICODE); 
// DB 접속 종료  
mysqli_close($con);  
?>
