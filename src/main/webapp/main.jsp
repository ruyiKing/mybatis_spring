<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>系统主页</title>
		<!-- demo url：http://sc.chinaz.com/jiaobendemo.aspx?downloadid=13531152150403 -->
		<!-- http://sc.chinaz.com/jiaoben/130531502630.htm -->
        <%--浏览器图标--%>
        <link rel="shortcut icon" type="image/x-icon" href="js/easyui-1.4.4/themes/icons/man.png" media="screen" />
		<link href="css/main.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery1.11.3.min.js"></script>
		<script type="text/javascript" src="js/main_work.js"></script>
	</head>
	
	<body style="height: 100%;">
		<br />
		<br />
	
		<div class="navbg">
			<div class="col960">
				<ul id="navul" class="cl">
					<li class="navhome"><a id="home" name="home" href="" target="_self">HOME</a></li>
					<li><a href="" title="系统管理">系统管理</a>
						<ul>
							<li>
								<a name="user" id="user"  title="用户管理1">用户管理</a>
							</li>
							<li><a name="html5" id="html5" title="HTML5">HTML5</a></li>
						</ul>
					</li>
					<!-- <li><a href="http://sc.chinaz.com" title="CSS">CSS</a>
						<ul>
							<li><a href="http://sc.chinaz.com" title="CSS入门">CSS入门</a></li>
							<li><a href="http://sc.chinaz.com" title="CSS工具">CSS工具</a></li>
							<li><a href="http://sc.chinaz.com" title="CSS技巧">CSS技巧</a></li>
							<li><a href="http://sc.chinaz.com" title="CSS实例">CSS实例</a></li>
							<li><a href="http://sc.chinaz.com" title="CSS3">CSS3</a></li>
							<li><a href="http://sc.chinaz.com" title="CSS hack">CSS
									hack</a></li>
							<li><a href="http://sc.chinaz.com" title="CSS2.0 手册">CSS2.0
									手册</a></li>
						</ul></li>
					<li><a href="http://sc.chinaz.com" title="网页特效">网页特效</a>
						<ul>
							<li><a href="http://sc.chinaz.com" title="导航菜单">导航菜单</a></li>
							<li><a href="http://sc.chinaz.com" title="表单按钮">表单按钮</a></li>
							<li><a href="http://sc.chinaz.com" title="表格图层">表格图层</a></li>
							<li><a href="http://sc.chinaz.com" title="图片特效">图片特效</a></li>
							<li><a href="http://sc.chinaz.com" title="滚动特效">滚动特效</a></li>
							<li><a href="http://sc.chinaz.com" title="文字特效">文字特效</a></li>
							<li><a href="http://sc.chinaz.com" title="时间日期">时间日期</a></li>
							<li><a href="http://sc.chinaz.com" title="窗口特效">窗口特效</a></li>
							<li><a href="http://sc.chinaz.com" title="鼠标特效">鼠标特效</a></li>
						</ul></li>
					<li><a href="http://sc.chinaz.com" title="前端资讯">前端资讯</a>
						<ul>
							<li><a href="http://sc.chinaz.com" title="用户体验">用户体验</a></li>
							<li><a href="http://sc.chinaz.com" title="前端观察">前端观察</a></li>
							<li><a href="http://sc.chinaz.com" title="职业生涯">职业生涯</a></li>
						</ul></li>
					<li><a href="http://sc.chinaz.com" title="前端技巧">前端技巧</a>
						<ul>
							<li><a href="http://sc.chinaz.com" title="布局技巧">布局技巧</a></li>
							<li><a href="http://sc.chinaz.com" title="网页字体">网页字体</a></li>
							<li><a href="http://sc.chinaz.com" title="flash">flash</a></li>
						</ul></li> -->
				</ul>
			</div>
		</div>
		<script type="text/javascript">
			$(".navbg").capacityFixed();

			$(document).ready(function() {

				$("#user").click(function(){
					var url="<%=request.getContextPath()%>/user/userList.do";
					window.frames["_mainArea"].location.replace(url);
				});

				$("#html5").click(function(){
					var url="http://sc.chinaz.com/jiaoben/130531502630.htm";
					window.frames["_mainArea"].location.replace(url);
				});
			});
		</script>
		<div style="text-align: left; clear: both">

				<iframe id='_mainArea' name="_mainArea" frameborder="0" width="100%"
						height="800" src='<%=request.getContextPath()%>/user/showUser.do' scrolling="auto"></iframe>
	
		</div>
	</body>
</html>
