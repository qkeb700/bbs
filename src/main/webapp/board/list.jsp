<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center my-5">연습용 게시판</h1>
		<table class="table table-hover">
			<colgroup class="mobile-hidden">
				<col width='55'>
				<col>
				<col width='120'>
				<col width='120'>
				<col width='80'>
			</colgroup>
			<thead>
				<tr>
					<th class="mobile-hidden">번호</th>
					<th class="mobile-hidden">제목</th>
					<th class="mobile-hidden">글쓴이</th>
					<th class="mobile-hidden">날짜</th>
					<th class="mobile-hidden">조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="mobile-hidden">8</td>
					<td><a href="view.html" class="icon pc-hidden"><i
							class="fas fa-user-tie"></i></a> <a href="view.html"
						class="utxt pc-hidden">홍길동 [2021.08.12]</a> <a href="view.html">제목입니다.</a>
					</td>
					<td class="mobile-hidden"><a href="view.html">홍길동</a></td>
					<td class="mobile-hidden">2021.08.12</td>
					<td class="mobile-hidden">265</td>
				</tr>
				<tr>
					<td class="mobile-hidden">7</td>
					<td><a href="view.html" class="icon pc-hidden"><i
							class="fas fa-user-tie"></i></a> <a href="view.html"
						class="utxt pc-hidden">홍길동 [2021.08.12]</a> <a href="view.html">제목입니다.</a>
					</td>
					<td class="mobile-hidden"><a href="view.html">홍길동</a></td>
					<td class="mobile-hidden">2021.08.12</td>
					<td class="mobile-hidden">265</td>
				</tr>
				<tr>
					<td class="mobile-hidden">6</td>
					<td><a href="view.html" class="icon pc-hidden"><i
							class="fas fa-user-tie"></i></a> <a href="view.html"
						class="utxt pc-hidden">홍길동 [2021.08.12]</a> <a href="view.html">제목입니다.</a>
					</td>
					<td class="mobile-hidden"><a href="view.html">홍길동</a></td>
					<td class="mobile-hidden">2021.08.12</td>
					<td class="mobile-hidden">265</td>
				</tr>
				<tr>
					<td class="mobile-hidden">5</td>
					<td><a href="view.html" class="icon pc-hidden"><i
							class="fas fa-user-tie"></i></a> <a href="view.html"
						class="utxt pc-hidden">홍길동 [2021.08.12]</a> <a href="view.html">제목입니다.</a>
					</td>
					<td class="mobile-hidden"><a href="view.html">홍길동</a></td>
					<td class="mobile-hidden">2021.08.12</td>
					<td class="mobile-hidden">265</td>
				</tr>
				<tr>
					<td class="mobile-hidden">4</td>
					<td><a href="view.html" class="icon pc-hidden"><i
							class="fas fa-user-tie"></i></a> <a href="view.html"
						class="utxt pc-hidden">홍길동 [2021.08.12]</a> <a href="view.html">제목입니다.</a>
					</td>
					<td class="mobile-hidden"><a href="view.html">홍길동</a></td>
					<td class="mobile-hidden">2021.08.12</td>
					<td class="mobile-hidden">265</td>
				</tr>
				<tr>
					<td class="mobile-hidden">3</td>
					<td><a href="view.html" class="icon pc-hidden"><i
							class="fas fa-user-tie"></i></a> <a href="view.html"
						class="utxt pc-hidden">홍길동 [2021.08.12]</a> <a href="view.html">제목입니다.</a>
					</td>
					<td class="mobile-hidden"><a href="view.html">홍길동</a></td>
					<td class="mobile-hidden">2021.08.12</td>
					<td class="mobile-hidden">265</td>
				</tr>
				<tr>
					<td class="mobile-hidden">2</td>
					<td><a href="view.html" class="icon pc-hidden"><i
							class="fas fa-user-tie"></i></a> <a href="view.html"
						class="utxt pc-hidden">홍길동 [2021.08.12]</a> <a href="view.html">제목입니다.</a>
					</td>
					<td class="mobile-hidden"><a href="view.html">홍길동</a></td>
					<td class="mobile-hidden">2021.08.12</td>
					<td class="mobile-hidden">265</td>
				</tr>
				<tr>
					<td class="mobile-hidden">1</td>
					<td><a href="view.html" class="icon pc-hidden"><i
							class="fas fa-user-tie"></i></a> <a href="view.html"
						class="utxt pc-hidden">홍길동 [2021.08.12]</a> <a href="view.html">제목입니다.</a>
					</td>
					<td class="mobile-hidden"><a href="view.html">홍길동</a></td>
					<td class="mobile-hidden">2021.08.12</td>
					<td class="mobile-hidden">265</td>
				</tr>
			</tbody>
		</table>
		<div class="row">
			<div class="col-12 col-md-4 my-3">
				<form>
					<div class="input-group">
						<div class="input-group-prepend">
							<button type="button"
								class="btn btn-outline-secondary dropdown-toggle"
								data-toggle="dropdown">제목+내용</button>
							<div class="dropdown-menu">
								<a href="view.html" class="dropdown-item">이름</a> <a
									href="view.html" class="dropdown-item">제목</a> <a
									href="view.html" class="dropdown-item">내용</a> <a
									href="view.html" class="dropdown-item">제목+내용</a>
							</div>
						</div>
						<input type="text" class="form-control user-form" placeholder="검색">
						<div class="input-group-append">
							<button class="btn btn-dark" type="button">검색</button>
						</div>
					</div>
				</form>
			</div>
			 <div class="col-12 col-md-8 my-3 text-right">
        		<a href="write.html"><button type="button" class="btn btn-dark px-4 btn-write">쓰기</button></a>
      		</div>
		</div>
		<ul class="pagination my-3 justify-content-center">
	      <li class="page-item active"><a href="list.html" class="page-link">&lt;&lt;</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">1</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">2</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">3</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">4</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">5</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">6</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">7</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">8</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">&gt;&gt;</a></li>
	    </ul>
	</div>
</body>
</html>