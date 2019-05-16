# torest

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### 2019 소프트웨어 프로젝트 14팀
토익 문제를 풀면 나무가 자란다!
팀장 이자룡 팀원 제태경 박명인 박수진

### 3월 12일 작업내용
깃허브 개설. vuetify 템플릿 테스트

### 3월 13일 작업내용
기존 샘플은 도저히 코드리딩이 불가해서 아예 예전 하던 방식으로 하려고 새로 만듬.
Galaxia때 작업했던 대로 진행될 듯 함. 

### 3월 15일 작업내용
전반적인 레이아웃 및 기초 작업 중. 갤럭시아와 매우 비슷해서 재의논이 필요함

### 3월 23일 작업내용
퀴즈쪽 작업함. 타이머 추가했으나 로직은 추가 못함. 
맨 마지막 문제에서 바로 넘어가려니깐 마지막 문제의 정답을 모르고, 그렇다고 카운터를 하나 낮추면 서버에 요청이 한번 더 들어감. 이건 결과보기 버튼을 만들어서 해결해야 할 것으로 생각됨
기타 자세한 에러는 직접 실행 후 파악해볼것. 

### 3월 24일 작업내용
1. 타이머 구현 성공. 두 번째 문제에서 10 9 8 7 ... 1초마다 세다가 0이 되면 더이상 줄어들지 않도록 타이머 멈춤. 다음 문제로 넘어가면 타이머는 리셋됨.
2. 결과 페이지에서 다시 하기를 누르면 게임은 다시 진행됨.

### 3월 29일 작업내용
1. Sign up 대략적으로 구현함.
2. 단어 암기 창 추가함. 추후 팀원들과 디자인 논의 후 개발할 예정

### 4월 13일 작업내용
1. 퀴즈기능 초기 작업함.
2. 답 적고 submit 누르면 정답으로 모두 바뀌고, 더이상 입력 못하도록 input tag가 disabled됨. submit버튼 사라지고 계속 단어 외우기 버튼 생김. 누르면 계속 단어 외우기 가능. 

#### 추가해야 할 점
1. 디자인 개선
2. 틀린 답은 빨간글자로 표시
3. 옳은 답과 틀린 답 옆에 체크 아이콘과 x아이콘 뜨도록
4. 계속 단어 외우기를 눌렀을 때, 다른 단어리스트가 뜨도록(서버에서 난수 생성으로 해야할 일)

### 4월 14일
서버가 해야할 일들을 적어둔다.

1.로그인
신호와 아이디, 패스워드 서버로 들어온다
mysql에 접근해서 아이디와 비밀번호가 맞는지 확인한다.
정보가 맞으면 클라이언트로 유저데이터와 오케이싸인을 보낸다.
정보가 틀리면 fail사인을 보낸다.

2. 회원가입
포스트 방식
신호와 아이디,패스워드 서버로 들어온다
mysql에 접근해서 아이디가 중복되는지 확인한다.
중복이 없으면 하나 새로 만든다
새 유저데이터와 오케이싸인을 보낸다.

3. 로그아웃
로그아웃 요청이 들어온다.
세션을 종료시킨다.

4. 프로필설정
데이터와 사진, 유저네임이 들어온다.
mysql에 접근하여 정보를 수정하고 사진을 저장한다.

5. 단어암기
단어 달라는 요청이 들어온다.
mysql접근해 사용자 수준에 맞는 단어를 난수로 10개 선정
json 양식으로 클라이언트로 보낸다. 
서브밋 클릭시 요청과 점수가 들어온다.
새 점수를 반영한다.
리스타트 누르면 다시 단어 달라는 요청이 들어온다. 

6. 문제풀기
문제 달라는 요청이 들어온다.
난수 생성 후 사용자 수준에 맞는 열 문제를 mysql에 접근해 가져온 후 json으로 제공한다.
다 풀면 점수와 업데이트 요청이 들어오고 mysql에 접근해 업데이트한다.
다시하기를 누르면 반복된다.
 
7. 나의 숲
아직 설계 안 함

### 4월 16일 작업내용 
1. 단어 1차 디자인 및 기능 구현 완료
2. 인트로페이지 백그라운드 적용. 추후 url 수정할 것.

### 4월 17일 작업내용
1. 나의 숲 좌표작업시작 

### 4월 24일 작업내용
1. 화면 좌표 hover시 백그라운드 컬러 바뀌게 만듦.
2. 좌표 클릭 시 메뉴리스트에 임시 데이터를 띄움
3. 클릭 시 화면에 부착됨. 그러나 해당 좌표에 부착되진 않음

### 4월 28일 작업내용
1. 나의 숲 켜질 때 사용자 데이터에 저장된대로 좌표에 붙이기 성공.
2. -1로 표시된 데이터는 클릭 시 사용자 보유 아이템으로 인식됨.
3. 사용자가 설치하지 않은 좌표의 경우, 이미지가 없는 부분을 그대로 두면 에러뜨니깐 일단 흙더미들을 넣어둠.

### 5월 11일 작업내용
1. 프런트 1차작업 완료. 서버파일과 로컬개발파일 깔끔히 정리했고 필요없는 코드 정리함.

### 5월 15일 작업내용
1. 로그인 성공적으로 구현
2. 나의 숲 서버로부터 정보 받아와서 클릭할때마다 정보는 바뀌나 다른 창으로 한 번 갔다가 다시 와야 반영이 됨. 이건 렌더링 타이밍의 문제라서 클라이언트 개발자가 주말간 다시 손 볼 예정
3. 통계 사용자정보 반영 성공. 추후 정보변경시 로직 미포함.

### 5월 16일 작업내용
1. 클릭할 때 실시간으로 아이템 적용되고, destroy버튼 클릭시에도 역시 잘 바뀜.
2. 패스워드창에서 엔터 쳐서 로그인 가능함.
3. 레벨테스트 만듦

#### 5월 16일 클라이언트사이드 향후 작업목록
1. 왜 틀렸는지를 알려주면 좋을 것 같다.
2. 테스트유저 버튼 두 개 정도만 만들 것.
3. 단어암기로직 수정. 앞에서 푼 단어를 열 개 출력하도록
4. 점수기준 로직 짤 것
5. 문제 난이도별 타이머 시간 다르게
6. 사용자 레벨에 맞는 단어와 문제, 그리고 사용자수준이 어떻게 올라가는지 로직 짤 것.