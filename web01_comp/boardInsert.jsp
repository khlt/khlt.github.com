<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쑤기</title>
</head>
<link rel="stylesheet" href="common.css">
<link rel="stylesheet" href="reset.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<body>
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
	<div class="content">
		<h2 style = "text-align:center;">게시판 글쓰기</h2>
		<form action="boardInsertPro.jsp" method="post" name="writeform" onsubmit="return writechek(this)">
			<table class="table">
				<tbody>
					<tr>
						<td class="necessary">제목</td>
						<td>
							<input type="text" name="btitle" id="btitle" maxlength="80" size="20" required autofocus>
						</td>
					</tr>
					<tr>
						<td class="necessary" >글 내용</td>
						<td>
							<textarea name="bcontent" id="bcontent" cols="80" rows="6" required></textarea>
						</td>
					</tr>
										<tr>
						<td class="necessary">작성자</td>
						<td>
							<input type="text" name="author" id="author" value="관리자" size="20" >
						</td>
					</tr>
					<tr>
						<td  colspan="2">
							<input type="submit" value="글 등록" class="btn btn-primary key">
							<input type="reset" class="btn btn-primary key">
							<a href="boardList.jsp" class="btn btn-primary key">목록</a>
						</td>
					</tr>				
				</tbody>
			</table>
			<script>
				function writecheck(f){
					var memo = f.bcontent.value;
					if(memo>=480){
						alret("글 수가 초과 되었습니다.(최대 480글자)");
						return false;
					}
				}
			</script>
			
		</form>
	</div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</body>
</html>