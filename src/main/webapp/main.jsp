<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>系统主页</title>
		<!-- demo url：http://sc.chinaz.com/jiaobendemo.aspx?downloadid=13531152150403 -->
		<!-- http://sc.chinaz.com/jiaoben/130531502630.htm -->
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
					<li class="navhome"><a href="" target="_blank">HOME</a></li>
					<li><a href="" title="系统管理">系统管理</a>
						<ul>
							<li><a href="<%=request.getContextPath()%>/user/userList.do"
								title="用户管理">用户管理</a></li>
							<li><a href="http://sc.chinaz.com" title="HTML5">HTML5</a></li>
						</ul></li>
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
						</ul></li>
					<li><a href="http://sc.chinaz.com" title="杂七杂八">杂七杂八</a>
						<ul>
							<li><a href="http://sc.chinaz.com" title="帝国cms">帝国cms</a></li>
							<li><a href="http://sc.chinaz.com" title="电脑技巧">电脑技巧</a></li>
							<li><a href="http://sc.chinaz.com" title="随笔杂谈">随笔杂谈</a></li>
						</ul></li>
					<li><a href="http://sc.chinaz.com" title="Javascript">Javascript</a>
						<ul>
							<li><a href="http://sc.chinaz.com" title="Jquery">Jquery</a></li>
							<li><a href="http://sc.chinaz.com" title="Js学习">Js学习</a></li>
							<li><a href="http://sc.chinaz.com" title="Js教程">Js教程</a></li>
						</ul></li>
					<li><a href="http://sc.chinaz.com" title="网站优化">网站优化</a>
						<ul>
							<li><a href="http://sc.chinaz.com" title="SEO杂谈">SEO杂谈</a></li>
							<li><a href="http://sc.chinaz.com" title="站长工具">站长工具</a></li>
							<li><a href="http://sc.chinaz.com" title="经验分享">经验分享</a></li>
						</ul></li> -->
				</ul>
			</div>
		</div>
		<script type="text/javascript">
			$(".navbg").capacityFixed();
		</script>
		<div style="text-align: left; clear: both">
	
			<iframe id="" src="<%=request.getContextPath()%>/user/userList.do"
				width="100%" height="800" scrolling="auto">
				脚本之家使用了框架技术，但是您的浏览器不支持框架，请升级您的浏览器以便正常访问脚本之家。 </iframe>
	
		</div>
	</body>
</html>
