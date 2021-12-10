<h1> 배틀그라운드 클론 게시판</h1>

### 🏠  [website](http://hamilkarr2.cafe24.com/)

<br>

## 요약

```sh
배틀그라운드 커뮤니티 게시판을 클론 코딩해 반응형 웹으로 제작한 팀 프로젝트입니다.
회원가입 후 로그인, 소셜로그인을 통해 게시판에 글을 작성할 수 있습니다.
게시글 CRUD & 검색, 댓글 CRUD, 파일 업로드, 조회수 기능까지 구현해 게시판의 기능을 모두 경험해 볼 수 있습니다.
```
<br>

## 살펴보기

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

___    

</details>

||주요 기능|
|:---|:---|
|<img src="https://user-images.githubusercontent.com/86813319/145541041-18c5f234-093b-46ed-9b9b-417c4606569e.png" height="900">|**Member** <br> - 일반 회원 가입, 로그인 <br> - 소셜 회원 가입, 로그인 (oauth 인증) <br> - 모든 회원은 가입시 랜덤으로 랭크 부여(실버,골드,플래티넘중 하나) <br> - 게시판에서 아이디 클릭시 랭크 팝업 <br> - 공지사항 작성, 모든 게시글 댓글 수정 삭제 가능한 '관리자 등급' 계정 |

<br>

## 구조
![MVC Model2](https://user-images.githubusercontent.com/86813319/145570780-012231f0-61a4-424a-a0ea-679802eaa295.png)

<center>
    기능 정리 (+++ 간단하게 로직 추가!!!)
    
    member 
           - login
           - join
           - socialLogin
           - superLogin
           
    board
           - write
           - list
           - view
           - edit
           - delete
           - notice
           - comment
           - pagenation
           - search
           - upload
           - viewCnt
           - logger
           ....
           
      
</center>

## :wrench: Tech Stack

### Tech Stack

![기술](https://user-images.githubusercontent.com/84768566/144577425-3368fe1b-0701-4a6e-b083-d3ef793e2610.jpeg)

<br>

## 🤼‍♂️ Author

(브랜치 이름으로 추가)

Team Leader, Backend : **hamilkarr(JYP)**

Backend : **bum**

Frontend : **so**

Frontend : **jin**

Frontend : **bomi**

<hr>


## 📝 License

© 2017 Kakao Games Corp. & KRAFTON Inc. All Rights Reserved.  <br>





