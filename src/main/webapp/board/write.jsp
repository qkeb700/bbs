<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <div class="container mb-5">
    <h1 class="text-center my-4">연습용 게시판</h1>
    <form action="/write" id="writeform" method="POST">
      <ul class="write-title">
        <li class="row">
          <label class="col-2 label" for="uname">이름</label>
          <div class="col-4 py-3">
            <input type="text" class="form-control" name="uname" id="uname" placeholder="이름">
          </div>
        </li>
        <li class="row">
          <label class="col-2 label" for="upass">비밀번호</label>
          <div class="col-4 py-3">
            <input type="text" class="form-control" name="upass" id="upass" placeholder="비밀번호">
          </div>
        </li>
        <li class="row">
          <label class="col-2 label" for="title">제목</label>
          <div class="col-10 py-3">
            <input type="text" class="form-control" name="title" id="title" placeholder="제목">
          </div>
        </li>
        <li class="content py-4">
          <textarea name="contents" id="" class="form-control contents" placeholder="내용"></textarea>
        </li>
      </ul>
      <div class="btn-area py-4 text-center">
        <button type="reset" class="btn btn-danger">취소</button>
        <button type="submit" class="btn btn-dark">전송</button>
      </div>
    </form>
  </div>