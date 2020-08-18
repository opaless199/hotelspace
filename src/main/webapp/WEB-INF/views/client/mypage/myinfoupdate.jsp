<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
   $(function(){
      if(${msg ne null}){
         alert('${msg}');
      };
      
      if($("#pwForm").submit(function(){
         if($("#pw").val() !== $("#pw2").val()){
            alert("��й�ȣ�� �ٸ��ϴ�.");
            $("#pw").val("").focus();
            $("#pw2").val("");
            return false;
         }else if ($("#pw").val().length < 8) {
            alert("��й�ȣ�� 8�� �̻����� �����ؾ� �մϴ�.");
            $("#pw").val("").focus();
            return false;
         }else if($.trim($("#pw").val()) !== $("#pw").val()){
            alert("������ �Է��� �Ұ����մϴ�.");
            return false;
         }
      }));
   })
</script>
<title>����������</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>�������� ����</h3>
			</div>
			<div>
				<form id="myForm" action="updateaction.do">
					<p>
						<label>ID</label> <input class="w3-input" type="text" id="id"
							name="id" readonly value="${ login.clientId }" >
					</p>
					<p>
						<label>�̸�</label> <input class="w3-input" type="text"
							id="name" name="email" readonly value="${ login.clientName }" >
					</p>
					<p>
						<label>Email</label> <input class="w3-input" type="text"
							id="email" name="email"  value="${ login.clientEmail }" required>
					</p>
					<p>
						<label>��ȭ��ȣ</label> <input class="w3-input" type="text"
							id="tel" name="email" value="${ login.clientTel }" required>
					</p>
					
					
					<p class="w3-center">
						<button type="submit"
							class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">ȸ������
							����</button>
					</p>

				</form>
			</div>

		</div>
	</div>



</body>
</html>