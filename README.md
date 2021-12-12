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
- 소셜 회원 가입, 로그인 (oauth 인증)

- 모든 타입의 회원은 가입시 랜덤(실버, 골드, 플래티넘)으로 랭크 부여  
    - <s>당신의 배틀그라운드 랭크는 더이상 브론즈가 아닙니다</s>
- 슈퍼 계정(관리자 등급)
    - 공지사항 작성 
    - 모든 게시글, 모든 댓글 삭제 및 수정 권한
   
  
#### 게시판 관련 기능
- 게시글 작성,삭제,수정,조회
    - 게시글에 이미지 추가 가능
- 댓글 작성,삭제,수정,조회
    - 댓글 작성시 실시간 글자수 카운트
- 공지 사항 게시글은 게시판의 항상 최상단
- 제목, 내용으로 게시글 검색 기능
- 조회수(로그인,비로그인) 카운트


<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

***

## 🏗️ Structure

### JSP MVC Model 2

[CommonFilter, Controller, Model 코드](https://github.com/hamilkarr/TeamBoard/tree/master/main/java/com) <br>  
[View(JSP) 코드](https://github.com/hamilkarr/TeamBoard/tree/master/main/webapp/views)  
  
![MVC Model2](https://user-images.githubusercontent.com/86813319/145702318-d663852e-d3d4-42e8-8465-c12e59868776.png)


### Data Base (mySQL 8.0)  

[Data Base SQL](https://github.com/hamilkarr/TeamBoard/tree/master/main/sql)  
  
![drawSQL-export-2021-12-12_15_42](https://user-images.githubusercontent.com/86813319/145703150-cd4d4c1d-803e-4bec-87ba-2594eb1f379c.png)

***

## :wrench: Tech Stack

### Tech Stack

![기술](https://user-images.githubusercontent.com/84768566/144577425-3368fe1b-0701-4a6e-b083-d3ef793e2610.jpeg)

<br>

## 🤼‍♂️ Author

Team Leader, Backend : **hamilkarr(JYP)**

Backend : **bum**

Frontend : **so**

Frontend : **jin**

Frontend : **bomi**

<hr>


## License

© 2017 Kakao Games Corp. & KRAFTON Inc. All Rights Reserved.
