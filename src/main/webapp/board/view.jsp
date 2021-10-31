<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <div class="container mb-5">
    <h1 class="text-center my-4">연습용 게시판</h1>
    <ul class="view-title">
      <li>
        <label>제목</label> 김포 사우스카이타운 김포시청은 절대 인정할 수 없다.
      </li>
      <li>
        <label for="">작성일</label> 2021.08.16
      </li>
      <li>
        <label for="">조회수</label> 34
      </li>
      <li>
        <p class="text mt-2">토지비 재산정 없는 시공사 선정 절대 인정할 수 없다.
          8월 23일,, 시공사 선정 투표 즉각 중단하라!
          시청이 조합에 보낸 시정 권고 즉시 철회하라!
          시청은 조합이 시도하는 시공사 선정 중지를 명령하라!</p>
      </li>
      <li>
        <label for="">작성자</label> 최 * *
      </li>
    </ul>
    <div class="mt-4 text-right pb-4">
      <a href="write.html" class="myButton">답글쓰기</a>
      <a href="write.html" class="myButton">수정</a>
      <a href="write.html" class="myButton">삭제</a>
      <a href="write.html" class="myButton">목록</a>
    </div>
    <ul class="comment-list">
      <li>
        <div class="row">
          <div class="col-3">
            <div class="card">
              <div class="card-body text-center">
                <span class="bigfont">안 * *</span>
                <br>
                <span class="cdate">2021.7.31</span>
              </div>
            </div>
          </div>
          <div class="col-7">
            <p>안녕하세요? 뭐가 그리 불만이 많으신가요?
              <br>참는 자에게 복이 옵니다.
            </p>
          </div>
          <div class="col-2">
            <div class="cdel-edit d-flex justify-content-center align-items-center">
              <a href="#">수정</a>&nbsp;&nbsp;/&nbsp;&nbsp; <a href="#">삭제</a>
            </div>
          </div>
        </div>
      </li>
      <li>
        <div class="row">
            <div class="col-3">
                <div class="card">
                   <div class="card-body text-center">
                       <span class="bigfont">김 * 수</span>
                       <br>
                       <span class="cdate">2021.7.31</span>  
                   </div>
                </div>
            </div>
            <div class="col-7">
                <p>위하여 위하여, 그러므로 이상은 품에 든 얼마나 투명하되 
                   위하여서. 과실이 우리 들어 싸인 따뜻한 사막이다. 
                   모래뿐일 기쁘며, 것은 열락의 설산에서 이상이 운다.
                </p>
                <p>위하여 두기 길지 속에 천하를 찬미를 꾸며 찾아다녀도, 
                    아름다우냐? 피는 풀밭에 방황하여도, 되는 황금시대다.                        
                </p>
                <p>우리의 싹이 무엇을 무엇을 눈이 피가 봄바람이다. 
                    되려니와, 우리 있으며, 충분히 소리다.이것은 살 교향악이다. 
                    생의 많이 붙잡아 힘있다. 더운지라 원질이 풀이 하였으며, 
                    청춘 바로 이것이다.
                </p>
            </div>
            <div class="col-2">
               <div class="cdel-edit d-flex justify-content-center align-items-center">
                   <a href="#">수정</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="#">삭제</a>
               </div>
            </div>
        </div>    
    </li>
    <!-- loop -->
  </div>


  </ul>
  <div class="comment-write">
    <form action="" name="commentform" method="POST">
      <div class="form-group">
        <textarea name="comment" class="comment form-control"></textarea>
      </div>
      <div class="form-group">
        <div class="row">
          <div class="col-3">
            <input type="text" class="form-control" placeholder="이름" required>
          </div>
          <div class="col-3">
            <input type="password" class="form-control" placeholder="비밀번호" required>
          </div>
          <div class="col-6">

          </div>
        </div>
      </div>
    </form>
  </div>

  <div class="loading">
    <div class="spinner-border text-primary"></div>
  </div>