<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("id");
	%>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> 
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/premierLeague/jsp/premierLeagueMain.jsp">Premier League</a>
	</div>

	<!-- Top Menu Items -->
	<ul class="nav navbar-right top-nav">
		<!-- 내정보창 -->
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">
				<i class="fa fa-user"></i> <%=id%> 
				<b class="caret"></b>
			</a>
			<ul class="dropdown-menu">
				<li>
					<a href="#">
						<i class="fa fa-fw fa-power-off"></i> 로그아웃
					</a>
				</li>
			</ul>
		</li>
	</ul>

	<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">
			<li class="active">
				<a href="/premierLeague/jsp/premierLeagueMain.jsp">
					<i class="fa fa-fw fa-dashboard"></i> 메인 페이지
				</a>
			</li>
			<li>
				<a href="#">
					<i class="fa fa-fw fa-bar-chart-o"></i> 선수 비교
				</a>
			</li>
			
			<li>
				<a href="/premierLeague/jsp/playerList.jsp">
					<i class="fa fa-fw fa-table"></i> 전체 선수 리스트
				</a>
			</li>
			
			<li>
				<a href="#" data-toggle="collapse" data-target="#demo">
					<i class="fa fa-fw fa-table"></i> Table 
					<i class="fa fa-fw fa-caret-down"></i>
				</a>
				<ul id="demo" class="collapse">
					<li>
						<a href="#">
							<i class="fa fa-fw fa-table"></i> Brand
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-fw fa-table"></i> Master
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-fw fa-table"></i> MasterRequest
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-fw fa-table"></i> Member
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-fw fa-table"></i> Menu
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-fw fa-table"></i> Order
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-fw fa-table"></i> Store
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-fw fa-table"></i> UnSelected Store
						</a>
					</li>
				</ul>
			</li>
			<li>
            	<a href="#">
            		<i class="fa fa-fw fa-edit"></i> Notice
            	</a>
            </li>
            <li>
				<a href="#">
					<i class="fa fa-fw fa-edit"></i> Question & Answer
				</a>
			</li>
		</ul>
	</div>
	<!-- /.navbar-collapse --> 
</nav>
</body>
</html>