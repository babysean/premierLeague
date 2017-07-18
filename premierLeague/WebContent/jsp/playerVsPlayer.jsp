<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/premierLeague/css/bootstrap.min.css" rel="stylesheet">
<link href="/premierLeague/css/sb-admin.css" rel="stylesheet">
<link href="/premierLeague/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script src="/premierLeague/js/jquery.js"></script>
<script src="/premierLeague/js/bootstrap.min.js"></script>
<title>프리미어 리그 선수 비교 사이트</title>
<style>
div.centerDiv{
	text-align: center;
	vertical-align: middle;
}
button{
	background-color: white;
	border: none;
}
</style>
<script>
	$(function() {

	});
</script>
</head>
<body>

	<div id="wrapper">
		<jsp:include page="include/bar.jsp" />
		<div id="page-wrapper">
			<div class="container-fluid">
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<h2>선수비교</h2>
						<div class="col-lg-5 centerDiv">
							<button><img src="/premierLeague/img/search.png"></button>
						</div>
						<div class="col-lg-2 centerDiv"><big><strong>vs</strong></big></div>
						<div class="col-lg-5 centerDiv">
							<button><img src="/premierLeague/img/search.png"></button>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /#page-wrapper -->
		</div>
		<!-- /#wrapper -->
	</div>
</body>
</html>