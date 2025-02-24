<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 폼</title>
</head>
<body>

<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
<form action = "./ex09form05pro.jsp" method = "fost">
	<table border = "1">
		<tr>
			<td>학번</td>
			<td><input type = "number" name="studentId" id = "id">
		</tr>
		<tr>
			<td>이름</td>
			<td><input type = "text" name="name" id ="name"></td>
		
		</tr>
		<tr>
			<td>학년</td>
			<td>
			<input type="radio" name="grade" value="1">1학년
			<input type="radio" name="grade" value="2">2학년
			<input type="radio" name="grade" value="3">3학년
			<input type="radio" name="grade" value="4">4학년
			</td>
		</tr>
		<tr>
			<td>선택과목</td>
			<td>
				<select name="subject">			
		        <option value="SPRING">SPRING</option>
                <option value="JAVA">JAVA</option>
                <option value="JSP"selected>JSP</option>
                <option value="HTML">HTML</option>
				</select>
			</td>
		</tr>
<tr>
            <td>취미</td>
            <td>
                <input type="checkbox" name="hobby" value="운동">운동
                <input type="checkbox" name="hobby" value="독서">독서
                <input type="checkbox" name="hobby" value="공부">공부
                <input type="checkbox" name="hobby" value="쇼핑">쇼핑
            </td>
        </tr>
        <tr>
        	<td>메모</td>
        	<td><textarea name="memo" rows = "10" cols = "55"></textarea></td>
        </tr>
        <tr>
        	<td colspan="2" align="center">
        		<input type="submit" value="입력완료">
        	</td>
        </tr>
	</table>

</form>
</body>
</html>

<script>
	document.querySelector("form").addEventListener("submit",(e)=>{
		let studentId = document.getElementById("id").value.trim();
		let name = document.getElementById("name").value.trim();
		
		if(studentId === "" || name === ""){
			alert("학번과 이름은 무조건 입력하세요!");
			e.preventDefault();
			return;
		}
	})
</script>