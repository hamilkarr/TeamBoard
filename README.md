<h1> 배틀그라운드 클론 게시판</h1>

### 🏠  [website](http://hamilkarr2.cafe24.com/)

<br>

## 📝 Description

```sh
배틀그라운드 커뮤니티 게시판을 클론 코딩해 반응형 웹으로 제작한 팀 프로젝트입니다.
회원가입 후 로그인, 소셜로그인을 통해 게시판에 글을 작성할 수 있습니다.
게시글 CRUD & 검색, 댓글 CRUD, 파일 업로드, 조회수 기능까지 구현해 게시판의 기능을 모두 경험해 볼 수 있습니다.
```
<br>

## :mag: Overview

<details>
    <summary>자세히 보기/접기</summary>
    
___
|로그인(소셜 로그인)|회원가입|회원정보 수정|
|:-:|:-:|:-:|
|<img src="https://user-images.githubusercontent.com/84768566/144599003-9171038b-eb23-4ee7-bfc4-7b164fd9912d.png">|<img src="https://user-images.githubusercontent.com/84768566/144599132-865bda6f-ca4a-4724-b3b0-251ead609bcb.png">|<img src="https://user-images.githubusercontent.com/84768566/144598803-d0151d64-f8f1-49a5-8d0e-42763d6dce48.png">|

<br><br>
    
|게시글 쓰기|댓글 수정|게시글 검색|
|:-:|:-:|:-:|
|![글쓰기](https://user-images.githubusercontent.com/86813319/145596121-d14b9c0e-8da7-4c59-9eb3-262c9cab3198.png)|<img src="https://user-images.githubusercontent.com/86813319/145556382-86c52624-1436-438a-a89e-d46c8c979b3f.png">|<img src="https://user-images.githubusercontent.com/86813319/145556386-5217f112-e52d-40cb-a8ba-199ac4bcd65d.png">|
    
<br><br>

|아이디 팝업|파일 업로드|게시글 구분별 정렬|
|:-:|:-:|:-:|
|![아이디 팝업](https://user-images.githubusercontent.com/86813319/145596135-35648fe1-ebf5-4db7-8aa6-dd39f184f86c.png)|![이미지 업로드](https://user-images.githubusercontent.com/86813319/145596143-70a5d924-baaa-4d2d-8b11-ea7d2f78c971.png)|![분류별 정렬](https://user-images.githubusercontent.com/86813319/145596656-763d06e3-630d-4d33-82ac-e4b8e0077f2f.png)|

</details>


***

<img src="https://user-images.githubusercontent.com/86813319/145541041-18c5f234-093b-46ed-9b9b-417c4606569e.png" align="right" height="900" >

#### 회원 관련 기능
- 일반 회원 가입, 로그인
- 소셜(네이버,카카오) 회원 가입, 로그인 (Rest API oauth 인증)

- 모든 타입의 회원은 가입시 랜덤(실버, 골드, 플래티넘)으로 랭크 부여  
    - <s>당신의 배틀그라운드 랭크는 더이상 브론즈가 아닙니다</s>
- 슈퍼 계정(관리자 등급)
    - 공지사항 작성 
    - 모든 게시글, 모든 댓글 삭제 및 수정 권한
   
  
#### 게시판 관련 기능
- 게시글 작성,삭제,수정,조회
    - 게시글에 이미지 추가 가능
    - 작성자 클릭시 프로필(랭크) 팝업  

- 댓글 작성,삭제,수정,조회
    - 댓글 작성시 실시간 글자수 카운트  

- 공지 사항 게시글은 게시판의 항상 최상단
- 제목, 내용으로 게시글 검색 기능
- 조회수(로그인,비로그인) 카운트
- 상단 배너(Swiper) 시간 경과시 자동으로 바뀜

<br><br><br><br><br><br><br><br><br>

***

## 🏗️ Structure

   ### JSP MVC Model 2

   [CommonFilter, Controller, Model](https://github.com/hamilkarr/TeamBoard/tree/master/main/java/com) <br>  
   [View(JSP)](https://github.com/hamilkarr/TeamBoard/tree/master/main/webapp/views) <br>  
   [Javascript, CSS](https://github.com/hamilkarr/TeamBoard/tree/master/main/webapp/resources)
  
![MVC Model2](https://user-images.githubusercontent.com/86813319/145702318-d663852e-d3d4-42e8-8465-c12e59868776.png)


### Data Base (mySQL 8.0)  

[Data Base SQL](https://github.com/hamilkarr/TeamBoard/tree/master/main/sql)  
  
![drawSQL-export-2021-12-12_15_42](https://user-images.githubusercontent.com/86813319/145703150-cd4d4c1d-803e-4bec-87ba-2594eb1f379c.png)

***

## :wrench: Tech Stack

### Development

<div align=center>     
  <img src="https://img.shields.io/badge/java16-007396?style=flat&logo=java&logoColor=white"> 
  <img src="https://img.shields.io/badge/jsp4.0-007396?style=flat&logo=jsp&logoColor=white"> 
  <img src="https://img.shields.io/badge/html5-E34F26?style=flat&logo=html5&logoColor=white"> 
  <img src="https://img.shields.io/badge/css-1572B6?style=flat&logo=css3&logoColor=white"> 
  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=flat&logo=javascript&logoColor=black"> 
  <img src="https://img.shields.io/badge/Swiper-6332F6?style=flat&logo=swiper&logoColor=white"> 
  <img src="https://img.shields.io/badge/jquery-0769AD?style=flat&logo=jquery&logoColor=white">
  <img src="https://img.shields.io/badge/Ajax-0769AD?style=flat&logo=Ajax&logoColor=white">
  <img src="https://img.shields.io/badge/mysql8.0-4479A1?style=flat&logo=mysql&logoColor=white"> 
  <img src="https://img.shields.io/badge/apache tomcat9.0-F8DC75?style=flat&logo=apachetomcat&logoColor=black">
</div>
<br>

### Hosting
   [카페24 호스팅 센터](https://hosting.cafe24.com/) <br>  
<div align=center>  
  <img src="https://img.shields.io/badge/java1.8-007396?style=flat&logo=java&logoColor=white"> 
  <img src="https://img.shields.io/badge/jsp3.1-007396?style=flat&logo=jsp&logoColor=white"> 
  <img src="https://img.shields.io/badge/apache tomcat8.0-F8DC75?style=flat&logo=apachetomcat&logoColor=black">
</div>
<br>

## 🤼‍♂️ Author

제작 기간 : 21-11-06 ~ 21-12-03

Team Leader, Backend : **hamilkarr(JYP)**

Backend : **bum**

Frontend : **so**

Frontend : **jin**

Frontend : **bomi**

<hr>


## License

© 2017 Kakao Games Corp. & KRAFTON Inc. All Rights Reserved.
