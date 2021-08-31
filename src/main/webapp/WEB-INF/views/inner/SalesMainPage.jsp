<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@100;400;700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="../css/salesMain.css" />
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<!-- <script src="../js/jquery-3.6.0.js"></script> -->
<title>Sales Management Tool</title>
<script src="../js/salesMain.js"></script>
<link rel="shortcut icon" href="#" />
</head>

<body>
	<!-- 上方導覽列 -->
	<div class="mainpage">
		<div class="topbar">
			<div class="top-left-bar-container">
				<img src="../images/audi-logo.png" alt="logo" /> <span>Internal
					Web - Sales Management Tool</span>
			</div>
			<div class="top-right-bar-container" id="top-right-bar-container">
				<div class="SearchBox" id="SearchBox" @mouseleave="closeDiv">
					<input type="text" id="myInput"
						class="SearchBox-input SearchBox-left-el"
						placeholder="Search Client" autocomplete="off"
						v-model="queryString" />
					<div class="SearchBox-input autocomplete-item SearchBox-left-el"
						v-show="toShow">
						<ul>
							<li v-for="(cli, index) in clients" :key="cli.uuid"><a
								:href="'http://localhost:8080/FinalProject/inner/searchClient?cid=' + clients[index].uuid">{{
									cli.name }}</a></li>
						</ul>
					</div>

					<button class="SearchBox-button" id="search-bar-submit-btn">
						<img src="../images/search.png" alt="search" />
					</button>
				</div>
				<div class="alert-container" id="alert-check-btn">
					<div>
						<img src="../images/bell.png" alt="message-alert-icon" />
					</div>
					<div class="numberCircle" id="alert-count">3</div>
				</div>
				<div class="user-info-container clickable" id="user-check-info-btn">
					<span>{{ employee.fullName }}</span> <img
						src="../images/empMember.png" alt="member-icon" />
				</div>
			</div>
		</div>
		<div class="main-page" id="mainPage">
			<div class="nav-container">
				<div class="navigation">
					<ul>
						<li class="list active"><a href="#New" id="new-btn"
							@click="changeStage('New')"> <span class="icon"><i
									class="fas fa-folder-open"></i></span> <span class="title">New</span>
								<span class="title">{{ countClientWithStage('New') }}</span>
						</a></li>
						<li class="list"><a href="#ATE" id="ate-btn"
							@click="changeStage('Attempt To Engaged')"> <span
								class="icon"><i class="fas fa-search"></i></span> <span
								class="title">Attempt To Engaged</span> <span class="title">{{
									countClientWithStage('Attempt To Engaged') }}</span>
						</a></li>
						<li class="list"><a href="#Engaged" id="engaged-btn"
							@click="changeStage('Engaged')"> <span class="icon"><i
									class="fas fa-search-location"></i></span> <span class="title">Engaged</span>
								<span class="title">{{ countClientWithStage('Engaged') }}</span>
						</a></li>
						<li class="list"><a href="#TD" id="td-btn"
							@click="changeStage('Test Drive')"> <span class="icon"><i
									class="fas fa-car"></i></span> <span class="title">Test Drive</span> <span
								class="title">{{ countClientWithStage('Test Drive') }}</span>
						</a></li>
						<!-- 
						<li class="list"><a href="#fu" id="fu-btn"
							@click="changeStage('Follow up')"> <span class="icon"><i
									class="fas fa-thumbtack"></i></span> <span class="title">Follow
									Up</span> <span class="title">{{ countClientWithStage('Follow
									Up') }}</span>
						</a></li>
						 -->
						<li class="list"><a href="#ltp" id="ltp-btn"
							@click="changeStage('Long Term')"> <span class="icon"><i
									class="fas fa-american-sign-language-interpreting"></i></span> <span
								class="title">Long Term</span> <span class="title">{{
									countClientWithStage('Long Term') }}</span>
						</a></li>
						<li class="list"><a href="#ordered" id="ordered-btn"
							@click="changeStage('Ordered')"> <span class="icon"><i
									class="fas fa-shopping-cart"></i></span> <span class="title">Ordered</span>
								<span class="title">{{ countClientWithStage('Ordered') }}</span>
						</a></li>
						<li class="list"><a href="#close" id="closed-btn"
							@click="changeStage('Closed')"> <span class="icon"><i
									class="fas fa-sad-tear"></i></span> <span class="title">Closed</span>
								<span class="title">{{ countClientWithStage('Closed') }}</span>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="content-container">
				<div class="content">
					<div class="content-title">
						<h2>{{ curStage}}</h2>
						<span>(</span> <span>{{ clientCount }}</span> <span>)</span>

						<hr>
					</div>


					<div class="content-body">
						<table>
							<thead>
								<tr>
									<th>Stage</th>
									<th>姓名</th>
									<th>電子信箱</th>
									<th>電話</th>
									<th>地區</th>
									<th>郵遞區號</th>
									<th>負責業務</th>
									<th>最後更新時間</th>
									<th></th>
								</tr>
							<thead>
							<tbody>
								<tr v-for="(client, index) in curClientList" :key="client.id">
									<td>{{ client.saleStage }}</td>
									<td>{{ client.fullName }}</td>
									<td>{{ client.clientEmail }}</td>
									<td>{{ client.phone }}</td>
									<td>{{ client.city }}{{ client.town }}</td>
									<td>{{ client.zipCode }}</td>
									<td>{{ client.empId }}</td>
									<td>2021-07-21</td>
									<td class="visit-link"><a :href="clientUrl(client.id)"
										target="_blank"><i class="fab fa-chromecast"></i></a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<script
			src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js'
			integrity='sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g=='
			crossorigin='anonymous'></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.7/vue.js"
			integrity="sha512-y/+zR8ZRJXvRWVRuhPbjSpGNIv2yG9hePHeWYEb5RPcciLwlyG0ZGd6JsiT9+sFtTON9FrDs+07ZzepwatYX1Q=="
			crossorigin="anonymous"></script>
		<script src="../js/mainContenVue.js"></script>
		<script src="../js/SearchClientBox.js"></script>
</body>
</html>
