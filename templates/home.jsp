<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>id_search</title>
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet'>
<link rel="stylesheet" href="idSearch.css">
<style>
	@charset "UTF-8";

h1 > a {
	color: #9966ff;
	font-family: Pacifico;
	font-size: 45px;
	margin-bottom: 10px;
}

.SBTN {
	background-color: #9966ff;
	width: 320px;
	height: 50px;
	border-radius: 25px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	color: white;
	border: 2px solid #9966ff;
	outline: none;
	padding-left: 15px;
	cursor: pointer;
	font-size: 16px;
	margin-top: 10px;
}

#SNAME {
	width: 300px;
	height: 40px;
	border-radius: 25px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border: 2px solid #d0cece;
	outline: none;
	padding-left: 15px;
	margin-top: 10px;
}

#SEMAIL {
	width: 300px;
	height: 40px;
	border-radius: 25px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border: 2px solid #d0cece;
	outline: none;
	padding-left: 15px;
	margin-top: 10px;
}
#SPWD {
	width: 300px;
	height: 40px;
	border-radius: 25px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border: 2px solid #d0cece;
	outline: none;
	padding-left: 15px;
	margin-top: 10px;
}
#SPWD1 {
	width: 300px;
	height: 40px;
	border-radius: 25px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border: 2px solid #d0cece;
	outline: none;
	padding-left: 15px;
	margin-top: 10px;
}	


#SINNUM {
	width: 300px;
	height: 40px;
	border-radius: 25px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border: 2px solid #d0cece;
	outline: none;
	padding-left: 15px;
	margin-top: 10px;
	
}

.SEARCH_FORM {
	text-align: center;
	margin-top: 7%;
}

#SID{
	width: 300px;
	height: 40px;
	border-radius: 25px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border: 2px solid #d0cece;
	outline: none;
	text-align: center;
	margin-top: 10px;
}
#SID_IN{
	width: 300px;
	height: 40px;
	border-radius: 25px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border: 2px solid #d0cece;
	outline: none;
	padding-left: 15px;
	margin-top: 10px;	
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btn123').click(function() {
			const email = $('#SEMAIL').val();
			console.log('완성된 이메일 : ' + email); 
			const checkInput = $('#SINNUM') 
			
			$.ajax({
				type : 'get',
				url : "/intrip/mailCheck?email=" + email, 
				success : function(data) {
					console.log("data : " + data);
					checkInput.attr('disabled', false);
					code = data;
				}
			}); 
		}); 
	});
	function check() {
		if (document.find_id.name.value == "") {
			alert("이름을 입력해 주세요");
			document.find_id.name.focus();
			return false;
		}
		if (document.find_id.email.value == "") {
			alert("이메일 주소를 입력해 주세요");
			document.find_id.email.focus();
			return false;
		}
		if ($("#SINNUM").val() == "") {
			alert("인증번호를 6 자리를 입력해 주세요");
			$("#SINNUM").focus();
			return false;
		}
		if ($("#SINNUM").val() == code) {
			return document.find_id.submit();
		}
		if ($("#SINNUM").val() != code) {
			alert("인증번호가 틀렸습니다!");
			return false;
		}
	}
	function btnchange() {
		if (document.find_id.name.value == "") {
			alert("이름을 입력해 주세요");
			document.find_id.name.focus();
			return false;
		}
		if (document.find_id.email.value == "") {
			alert("이메일 주소를 입력해 주세요");
			document.find_id.email.focus();
			return false;
		}
		alert("인증번호를 발송했습니다 인증번호가 오지 않으면 입력하신 정보가 회원정보와 일치하는지 확인해 주세요");
		const btnElement = document.getElementById('btn123');
		btnElement.innerText = '인증번호재전송';
	}
</script>

</head>
<body>
	<div class="SEARCH_FORM">
		<h1><a href="${contextPath}/mainpage/main" style="text-decoration: none;">People in Trip</a></h1>
		<h5>아이디찾기</h5>
		<form action="${contextPath}/login_signup/find_id" name="find_id"
			method="post">
			<input id="SNAME" name="name" type="text"
				onfocus="this.placeholder='';" onblur="this.placeholder='이름'"
				placeholder="이름"><br> <input id="SEMAIL" name="email"
				type="text" onfocus="this.placeholder='';" placeholder="이메일"
				onblur="this.placeholder='이메일'" class="ssemail"><br>
			<button type="button" class="SBTN" onclick="btnchange()" id="btn123">
				<strong>인증번호 전송</strong>
			</button>
			<br> <input id="SINNUM" type="text"
				onfocus="this.placeholder='';" onblur="this.placeholder='인증번호'"
				placeholder="인증번호"><br>
			<button type="button" onClick="check()" class="SBTN">
				<strong>확인</strong>
			</button>
			<br>
			<br>
			
		<c:if test="${check == 1}">
			<script>
				opener.document.find_id.name.value = "";
				opener.document.find_id.email.value = "";
			</script>
			<h3 style="color: red;">일치하는 정보가 존재하지 않습니다.</h3>
		</c:if>
			
	</div>
	</form>
</body>
</html>