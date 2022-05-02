## 안녕하세요! Frontend , so 입니다

### 🏠  [website](http://hamilkarr2.cafe24.com/board/list)
<img src="https://user-images.githubusercontent.com/86813319/145541041-18c5f234-093b-46ed-9b9b-417c4606569e.png" align="center" height="1100" >

## ❓ 담당한 부분
- [[banner]](https://github.com/hamilkarr/TeamBoard/blob/master/main/webapp/views/outline/header/inc/common.jsp) header부분에 움직이는 배너를 만들었습니다!


- [[body]](https://github.com/hamilkarr/TeamBoard/blob/master/main/webapp/views/board/list.jsp) 플레이어 게시판 메인화면을 담당했습니다!

<br>

## 🙋‍♀️ 기능
1. **움직이는 배너**는 swiper.js의 슬라이드 스크립트를 활용해 3.5초가 지나면 자동으로 넘어가게 만들었습니다.<br> 👉 [banner.js](https://github.com/hamilkarr/TeamBoard/blob/master/main/webapp/resources/js/banner.js)

```js
window.onload = function() {
	var swiper = new Swiper(".mySwiper", {
	    pagination: {
	      el: ".swiper-pagination",
	    },
		autoplay: {
          delay: 3500,
          disableOnInteraction: false,
        },
	});
};
```
<br>

2. **게시글 구분별 정렬**은  JSTL의 <c:choose> 조건문을 사용해 만들었습니다. <br>
👉 [list.jsp ](https://github.com/hamilkarr/TeamBoard/blob/master/main/webapp/views/board/list.jsp)
- <c:when test="${item.status == 'normal'}"> uri 값이 normal일때, 일반
- <c:when test="${item.status == 'tip'}"> uri 값이 tip일때, 팁과 정보
- <c:otherwise> 다른 값일때, 공지사항
```js
<c:choose>
	      <c:when test="${item.status == 'normal'}">
		          <c:out value="일반"/>
	      </c:when>
	      <c:when test="${item.status == 'tip'}">
		          <c:out value="팁과 정보"/>
	      </c:when>
	      <c:otherwise>
	          	<c:out value="공지사항"/>
	      </c:otherwise>
</c:choose>
```
<br>

3. **공지사항**은  JSTL의 <c:choose> 조건문을 사용해 만들었습니다. <br>
👉 [list.jsp ](https://github.com/hamilkarr/TeamBoard/blob/master/main/webapp/views/board/list.jsp)

- <c:when test="${item.isNotice == 1}">일때, notice 클래스 추가
- notice 클래스일때 css 설정
```js
<c:choose>
      		<c:when test="${item.isNotice == 1}">
      			<tr class="tr_list notice">
      		</c:when>
      		<c:otherwise>
        		<tr class="tr_list">
        	</c:otherwise>
</c:choose>
```
<br>

4.  **게시글 구분 사이트 이동 시 on 클래스 추가**는 javascript를 사용해 만들었습니다.<br>
👉 [list.js](https://github.com/hamilkarr/TeamBoard/blob/master/main/webapp/resources/js/list.js)
- 전체/일반/팁과 정보 이동 시 on 클래스를 추가해 해당 사이트 일때 css를 추가해 직관적으로 확일 할 수 있습니다.


```js
$(document).ready(function() {
    var url = location.href;
    // var getAr0 = url.indexOf("list");
    var getAr1 = url.indexOf("normal");
    var getAr2 = url.indexOf("tip");

    // if(getAr0 != -1) {
    //     $("#list").addClass("on");
    // }
    if(getAr1 != -1) {
        $("#normal").addClass("on");
        $("#total").removeClass("on");
    }
    if(getAr2 != -1) {
        $("#tip").addClass("on");
        $("#total").removeClass("on");
    }
});	
```


## 🛠 Javascript, CSS

[team frontend](https://github.com/hamilkarr/TeamBoard/tree/master/main/webapp/resources)

<details><summary>so 작업기록 눌러 확인해보기</summary>

## Update2 (12-02) 프론트팀 취합 이후 수정함
### 전체 디벨롭 이후에 수정할 부분!!
list.jsp
 - line 26~32  : 검색결과 박스
 - line 98~106 : 검색창

board.css
 - line 36~~ 전체 복사


## Update (12-02)
list.jsp
 - N 대신 아이콘 추가
 - 아이콘 모음 제거
 
board.css
 - 아이콘 부분 수정
 - font-size px > rem으로 변경

 readme... 틀 작성중...
 
 
## Update (11-28)
![image](https://user-images.githubusercontent.com/84768566/143769221-d78d71d1-c957-4da2-bfcc-b36e4c8fe8a2.png)

com.core.Board
 - isNotice 추가

list.jsp
 - {isNotice == 1}일때 notice클래스 추가

board.css
 - notice 배경색 변경
 - table 셀간격 삭제 (collapse)

![image](https://user-images.githubusercontent.com/84768566/143769224-cb1eb819-f49f-47bc-82c0-7e85ced2b981.png)

 - 페이지네이션 css추가 (develop브랜치에 미리 올림 > 소스 변경 없음)

<br>

## Update (11-26)
![image](https://user-images.githubusercontent.com/84768566/143518451-49211f9d-3d11-47e9-b41e-3a8b0904f86d.png)

- 아이콘 n버튼 , 레벨 (4단계) 예시 추가
  * 배틀그라운드 게시판에서 이미지 4개 가져옴, 회의 후 레벨 아이콘 결정!


board.css
- 글쓰기 버튼 수정
- 조회수 항목 추가, 제목 항목 크기 수정

banner.js
- 롤링 배너 자동 슬라이드 추가

</details>

<br>   

   
## 📝 어려웠던 점

 백엔드팀과 함께 하는 작업이라 데이터를 받아오는 과정이 쉽지않았다. 개인이 작업한 코드가 아니다보니 어느위치에 있는지 확인하는 시간도 걸렸고 프론트팀에서도 각자가 작업한 부분을 통합하는 과정에서 오류가 나타나기도 했다. 하지만 이런 일이 있을 수록 서로 소통을 더욱 활발히 했고 회의를 거의 매일 했었다. 자신이 담당한 부분을 설명하며 발표하는 시간을 가졌고 개인 read.me를 활용해 작업기록을 공유했다. 이 점이 이후 개발시 시간을 단축시키는데 큰 도움이 되었던 것 같다. 다시한번 팀프로젝트에서 커뮤니케이션이 얼마나 중요한가를 느끼는 계기가 되었다.


## 🤼‍♂️ 

> [teamgithub](https://github.com/hamilkarr/TeamBoard)
