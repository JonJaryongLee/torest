<?php
header("Content-Type:application/json");
// DB 접속
$con=mysqli_connect("localhost","root","**uplus1214","torest");
// 접속 실패 시 메시지 나오게 하기
if (mysqli_connect_errno($con))
{ echo "MySQL접속 실패: " . mysqli_connect_error(); }
// 기본 클라이언트 문자 집합 설정하기
mysqli_set_charset($con,"utf8");
// 결과물의 갯수 랜덤 (1-5)
$cnt = rand(1, 1);
// 쿼리문 실행, 결과를 res에 저장
// 랜덤 order by rand()
$res = mysqli_query($con, "select * from question order by rand() LIMIT $cnt");
// 결과를 배열로 변환하기 위한 변수 정의
$result = array();
// 쿼리문의 결과(res)를 배열형식으로 변환(result)
while($row = mysqli_fetch_array($res)) {
  array_push($result, array('questionFront'=>$row[1],'questionEnd'=>$row[3],'answerNum'=>$row[2],'choice0'=>$row[5],'choice1'=>$row[6],'choice2'=>$row[7],'choice3'=>$row[8],'solution'=>$row[10]));
}
// 배열형식의 결과를 json으로 변환
echo json_encode($result,JSON_UNESCAPED_UNICODE);
// DB 접속 종료
mysqli_close($con);
?>
