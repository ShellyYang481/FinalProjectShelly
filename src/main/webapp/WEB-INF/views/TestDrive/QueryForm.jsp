<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", -1); // Prevents caching at the proxy server
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>試駕表單查詢</title>
<link rel="stylesheet" href="../../css/testdrivestyle.css">

<style>
</style>

</head>

<body class="body_queryf">

	<h1 class="h_queryf">試駕表單查詢</h1>
	<div id="container">
<!-- 		<form action="/FinalProject/ControllerServlet" method="post"> -->
		<form action="queryCarForms" method="post">
<!-- 						 class="div divtest"  -->
			<div id="divvvv" class="div "> 
				<input type="submit" name="todo" value="表單總覽">
			</div>
					<div
						    class="g-recaptcha"
  							data-sitekey="6LcS8eQbAAAAALo4AwumLe4YPm-TdMKHsgTqZiXi"
    						data-theme="light" data-size="normal"
    						data-callback="verifyCallback"
    						data-expired-callback="expired"
    						data-error-callback="error">
					</div>
					    <div id="google-reCaptcha"></div>
    				<button>验证后提交</button>
			<table class="table_queryf">
				<thead>
					<tr>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody id="tbody_showform"></tbody>
			</table>
		</form>
	</div>
	
	
	
	<script src="https://www.google.com/recaptcha/api.js" async="async" defer="defer"></script>
 <!-- 
  <script type="text/javascript">
    var verifyCallback = function(token) {
        document.querySelector('button').addEventListener('click', () => {
            console.log('客户端token:' + token);
        fetch('/validate?token=' + token, {
            method: 'GET'
        }).then(response => {
            if (response.ok){
            response.json().then(message => {
                console.log('服务端验证');
            console.log(message);
            alert(message);
        });
        }
    });
    });

    };
    var onloadCallback = function() {
        grecaptcha.render('google-reCaptcha', {
            'sitekey' : '6LdctdwUAAAAAORpZqPoqPta7PUKjU4Wl24JIGRs',
            'callback' : verifyCallback,
            'theme' : 'light'
        });
    };
</script>  
     -->
    
    
    
    
    
    
    
    
    
    
    
    <script>
      var uriIP = 'https://www.cloudflare.com/cdn-cgi/trace';
      
      // 取 ip
      var ip;
      fetch(uriIP)
        .then(response => response.text())
        .then(result => {
          var resultArr = result.split('\n');
          for(var i = 0, len = resultArr.length; i < len; i++)	{
            var tempArr = resultArr[i].split('=');
            if(tempArr[0] == 'ip') {
              ip = tempArr[1];
              break;
            }
          }
        })
        .catch(err => {
          window.alert(err)
        });
      
      // 方法 1：reCAPTCHA 送到後端做驗證
      function verifyCallback(token) {
      
        var formData = new FormData();
        formData.append('token', token);
        formData.append('ip', ip);
      
        fetch("/admin/edit/reCAP", {
          method: "POST",
          body: formData
        }).then(response => response.json())
          .then(result => {
            if(result.success) {
            	window.alert('驗證成功')
            	// 把display=none的css拿掉
            	document.getElementById("divvvv").classList.remove('divtest'); 
            } else {
              window.alert(result['error-codes'][0])
            }
          })
          .catch(err => {
            window.alert(err)
          })
      }
      
      // 過期要做的事
      function expired(ex) {
        window.alert('reCAPTCHA 驗證程序到期')
      }
      
      // 失敗要做的事
      function error(err) {
        window.alert('reCAPTCHA 驗證失敗')
      }
    </script>
</body>
</html>