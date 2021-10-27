<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
span {
	align:"center"";
}
</style>
<title>Item 정보 입력의 폼</title>
</head>
<body>

	<h2>정보 입력 폼</h2>

	<form method="post" action="itemWriteResult.jsp">
		<table class="table">
			<tr>
				<td>상품명 :</td>
				<td><input type="text" name="name" size="20" maxlength="19"></td>
			</tr>
			<tr>
				<td>가 격 :</td>
				<td><input type="number" name="price" size="20" maxlength="8"></td>
			</tr>
			<tr>
				<td>설 명:</td>
				<td><textarea cols="30" rows="10" name="description" maxlength="99"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td>
				<span> <input type="submit" name="submit" value="전송">
		 <input	type="reset" name="reset" value="취소">
		</span></td>
			</tr>
		</table>
		
	</form>
</body>
</html>