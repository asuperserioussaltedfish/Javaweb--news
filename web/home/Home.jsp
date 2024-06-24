<%@ page import="po.User" %>
<%--<%@ page import="utils.UserThreadLocal" %>--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="../errorPage/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Salted Fish</title>
	<link type="text/css" rel="stylesheet" id="theme-link" href="<%= request.getContextPath()%>/css/Style.css">
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/css/IconFont.css">
	<link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

</head>
<body>

<%@ include file="../header/Header.jsp" %>

	<!-- banner : begin -->
	<div class="slide" id="slide">
		<a class="s-bg" style="background-image: url(<%= request.getContextPath()%>/images/bg.jpg);background-attachment: fixed; border-radius: 0 0 15px 15px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); position: relative;background-position: center top -50px;">
		</a>
		<div class="sh-logo">
			<a href="<%= request.getContextPath()%>/home/Home.jsp">
				<div class="sh-title">
					未来视界
				</div>
			</a>
			<div class="shell">
				<input type="text">
				<a>
					<i class="fa fa-hand-o-right"></i>
					<i class="fa fa-search" style="	cursor: pointer"></i>
				</a>
			</div>
			<a>
				<div class="popular-searches" style="color: white;">
					<a style="color: white; font-weight: 700;">热门搜索：</a>
					<a href="https://live.bilibili.com/22603245" style="color: white;">永雏塔菲&nbsp;</a>
					<a href="https://live.bilibili.com/22816111" style="color: white;">東雪蓮Official&nbsp;</a>
					<a href="https://live.bilibili.com/22676119" style="color: white;">猫雷NyaRu_Official&nbsp;</a>

				</div>
				<div class="source" style="color: white;">

					<span>图片来源知名搜索引擎和设计网站</span>
					<img src="<%= request.getContextPath()%>/svg/roof_icon-huaban-524e2fdb.svg" alt="花瓣"><img src="<%= request.getContextPath()%>/svg/roof_icon-bing-71dd4fc6.svg"
						alt="必应"><img src="<%= request.getContextPath()%>/svg/roof_icon-baidu-d9504daf.svg" alt="百度"><img
						src="<%= request.getContextPath()%>/svg/roof_icon-sougo-0c06dca0.svg" alt="搜狗"><img src="<%= request.getContextPath()%>/svg/roof_icon-duitang-0744a892.svg"
						alt="堆糖"><img src="<%= request.getContextPath()%>/svg/roof_icon-360-ae405089.svg" alt="360">
				</div>

			</a>

		</div>
	</div>
	<!-- banner : end -->
	<!-- Navigation Bar: begin -->
	<nav class="bottom-nav">
		<ul class="nav-list">
			<li class="nav-item" data-content="content1" style="background-color: rgb(66, 129, 217);color: white;">国际热点
			</li>
			<li class="nav-item" data-content="content2">为您推荐</li>
			<li class="nav-item" data-content="content3">本地新闻</li>
			<li class="nav-item" data-content="content4">关注要事</li>
			<li class="nav-item" data-content="content5">财经金融</li>
		</ul>
	</nav>
	<!-- Navigation Bar: end -->


	<!--outer : begin-->
	<div class="outer">

		<!--content : begin-->

		<!--hot topics : begin-->
		<div class="hot-char">
			<h2 class="hot-h2">优秀创作者</h2>

			<div class="card">
				<div class="imgBx">
					<img src="<%= request.getContextPath()%>/images/l1.png" alt="">
				</div>
				<div class="content-c">
					<h2 class='content-h2' style="color: rgb(86, 160, 250);">山田凉</h2>
					<p>冷酷而孤高的高中二年生。</p>
					<p>担任结束乐队的贝斯手。是虹夏的好友。</p>
					<p>有着远离尘世的兴趣，被称作怪人的话会感到高兴。</p>
					<p>虽然家庭富裕，但对于乐器经常缺钱。</p>
					<p>偶尔吃草来解饿。</p>
				</div>
			</div>
			<div class="card">
				<div class="imgBx">
					<img src="<%= request.getContextPath()%>/images/l2.jpg" alt="">
				</div>
				<div class="content-c">
					<h2 class='content-h2' style="color: rgb(86, 160, 250);">蕾姆</h2>
					<p>在罗兹瓦尔宅邸工作的双胞胎女仆妹妹。</p>
					<p>眼神平静，除了敬爱的姐姐以外连商业式微笑都难以看见。幼时常被与姐姐比较，有些许自卑感。</p>
					<p>对姐姐拉姆有着绝对的信赖，是个十足的姐控，和姐姐一起在工作环境感到非常幸福。</p>
				</div>
			</div>
			<div class="card">
				<div class="imgBx" style="background-color: white;">
					<img src="<%= request.getContextPath()%>/images/l3.jpg" alt="" style="padding-top: 30px;">
				</div>
				<div class="content-c">
					<h2 class='content-h2' style="color: rgb(86, 160, 250);" >洛琪希·米格路迪亚·格雷拉特</h2>

					<p>
						洛琪希·米格路迪亚,魔族「米格路德族」出身,水王级魔术师。A级冒险者。
					</p>
					<p>受种族影响成年后就一直保持娇小萝莉身材，绑有双马尾三头麻花辫，看起来睡眼惺忪的美少女。</p>
					<p>擅长水系统的魔术以及短咏唱的运用</p>

				</div>
			</div>
			<!-- <ul class="ht-list">
					<li>
						<a href="https://www.pixiv.net/artworks/114287760">
							<img src="<%= request.getContextPath()%>/images/p1.jpg" />
							<h3 style="color: rgb(88, 158, 255);">玛修·基列莱特</h3>
						</a>
					</li>
					<li>
						<a href="Detail.jsp">
							<img src="<%= request.getContextPath()%>/images/p2.jpg" style="background-position: left;" />
							<h3>Ivanka</h3>
						</a>
					</li>
					<li>
						<a href="Detail.jsp">
							<img src="<%= request.getContextPath()%>/images/angelina-jolie.jpg" />
							<h3>Trump</h3>
						</a>
					</li>
					<li>
						<a href="Detail.jsp">
							<img src="<%= request.getContextPath()%>/images/leonardo_dicaprio.jpg" />
							<h3>Ivanka</h3>
						</a>
					</li>
				</ul> -->
		</div>
		<!--hot topics : end-->
		<div class="content">
			<!--news today : begin-->
			<div class="hot-topic news-today">
				<h2>今日新闻</h2>
				<ul class="nt-list index-nt-list">
					<li class="nt-red">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/kristen.jpg" /></span>
							<p>Stars</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-green">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/14362701646_6ea21f225b_z.jpg" /></span>
							<p>Food</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-blue">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/keira.jpg"  alt=""/></span>
							<p>News</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-blue">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/kristen.jpg" /></span>
							<p>Stars</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-orange">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/14362701646_6ea21f225b_z.jpg" /></span>
							<p>Food</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-purple">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/keira.jpg" /></span>
							<p>News</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-orange">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/kristen.jpg" /></span>
							<p>Stars</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-blue">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/14362701646_6ea21f225b_z.jpg" /></span>
							<p>Food</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-green">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/keira.jpg" /></span>
							<p>News</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-yellow">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/kristen.jpg" /></span>
							<p>Stars</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-purple">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/14362701646_6ea21f225b_z.jpg" /></span>
							<p>Food</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
					<li class="nt-green">
						<a href="<%= request.getContextPath()%>/detail/Detail.jsp">
							<span><img src="<%= request.getContextPath()%>/images/keira.jpg" /></span>
							<p>News</p>
							<h3>Welcome to the second season of the horse racing girl, thank you meow</h3>
						</a>
					</li>
				</ul>
			</div>
			<!--hot topics : end-->

		</div>
		<!--content : end-->
	</div>
	<!--outer : end-->

	<!--footer : begin-->
	<footer class="footer"
		style="background-image: url(<%= request.getContextPath()%>/images/1.JPG);background-position: bottom; background-size: cover;background-attachment: fixed;">
		<div class="ft-top">
			<a href="<%= request.getContextPath()%>/list/List.jsp">Fries</a>
			<a href="<%= request.getContextPath()%>/list/List.jsp">Food</a>
			<a href="<%= request.getContextPath()%>/list/List.jsp">Pets</a>
			<!-- <a href="List.jsp"><img src="<%= request.getContextPath()%>/images/logo.png" /></a> -->
			<a href="<%= request.getContextPath()%>/list/List.jsp">News</a>
			<a href="<%= request.getContextPath()%>/list/List.jsp">Sports</a>
			<a href="<%= request.getContextPath()%>/list/List.jsp">Stars</a>
		</div>
		<div class="ft-bottom">
			<a href="<%= request.getContextPath()%>/list/List.jsp">Terms of Use</a>
			<a href="<%= request.getContextPath()%>/list/List.jsp">Privacy Policy</a>
			<a href="<%= request.getContextPath()%>/list/List.jsp">About Us</a>
			<a href="<%= request.getContextPath()%>/list/List.jsp">DMAC</a>
		</div>
	</footer>
	<!--footer : end-->
	<!-- <div class="fixed-card">
		<span>Social</span>
		<a class="social-link" href="#">
			<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
				xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 461.001 461.001" xml:space="preserve"
				fill="#000000">
				<g id="SVGRepo_bgCarrier" stroke-width="0"></g>
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
				<g id="SVGRepo_iconCarrier">
					<g>
						<path style="fill:#F61C0D;"
							d="M365.257,67.393H95.744C42.866,67.393,0,110.259,0,163.137v134.728 c0,52.878,42.866,95.744,95.744,95.744h269.513c52.878,0,95.744-42.866,95.744-95.744V163.137 C461.001,110.259,418.135,67.393,365.257,67.393z M300.506,237.056l-126.06,60.123c-3.359,1.602-7.239-0.847-7.239-4.568V168.607 c0-3.774,3.982-6.22,7.348-4.514l126.06,63.881C304.363,229.873,304.298,235.248,300.506,237.056z">
						</path>
					</g>
				</g>
			</svg>
		</a>
		<a class="social-link" href="#">
			<svg fill="#000000" viewBox="0 0 512 512" id="icons" xmlns="http://www.w3.org/2000/svg">
				<g id="SVGRepo_bgCarrier" stroke-width="0"></g>
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
				<g id="SVGRepo_iconCarrier">
					<path
						d="M412.19,118.66a109.27,109.27,0,0,1-9.45-5.5,132.87,132.87,0,0,1-24.27-20.62c-18.1-20.71-24.86-41.72-27.35-56.43h.1C349.14,23.9,350,16,350.13,16H267.69V334.78c0,4.28,0,8.51-.18,12.69,0,.52-.05,1-.08,1.56,0,.23,0,.47-.05.71,0,.06,0,.12,0,.18a70,70,0,0,1-35.22,55.56,68.8,68.8,0,0,1-34.11,9c-38.41,0-69.54-31.32-69.54-70s31.13-70,69.54-70a68.9,68.9,0,0,1,21.41,3.39l.1-83.94a153.14,153.14,0,0,0-118,34.52,161.79,161.79,0,0,0-35.3,43.53c-3.48,6-16.61,30.11-18.2,69.24-1,22.21,5.67,45.22,8.85,54.73v.2c2,5.6,9.75,24.71,22.38,40.82A167.53,167.53,0,0,0,115,470.66v-.2l.2.2C155.11,497.78,199.36,496,199.36,496c7.66-.31,33.32,0,62.46-13.81,32.32-15.31,50.72-38.12,50.72-38.12a158.46,158.46,0,0,0,27.64-45.93c7.46-19.61,9.95-43.13,9.95-52.53V176.49c1,.6,14.32,9.41,14.32,9.41s19.19,12.3,49.13,20.31c21.48,5.7,50.42,6.9,50.42,6.9V131.27C453.86,132.37,433.27,129.17,412.19,118.66Z">
					</path>
				</g>
			</svg>
		</a>
		<a class="social-link" href="#">
			<svg viewBox="0 -28.5 256 256" version="1.1" xmlns="http://www.w3.org/2000/svg"
				xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" fill="#000000">
				<g id="SVGRepo_bgCarrier" stroke-width="0"></g>
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
				<g id="SVGRepo_iconCarrier">
					<g>
						<path
							d="M216.856339,16.5966031 C200.285002,8.84328665 182.566144,3.2084988 164.041564,0 C161.766523,4.11318106 159.108624,9.64549908 157.276099,14.0464379 C137.583995,11.0849896 118.072967,11.0849896 98.7430163,14.0464379 C96.9108417,9.64549908 94.1925838,4.11318106 91.8971895,0 C73.3526068,3.2084988 55.6133949,8.86399117 39.0420583,16.6376612 C5.61752293,67.146514 -3.4433191,116.400813 1.08711069,164.955721 C23.2560196,181.510915 44.7403634,191.567697 65.8621325,198.148576 C71.0772151,190.971126 75.7283628,183.341335 79.7352139,175.300261 C72.104019,172.400575 64.7949724,168.822202 57.8887866,164.667963 C59.7209612,163.310589 61.5131304,161.891452 63.2445898,160.431257 C105.36741,180.133187 151.134928,180.133187 192.754523,160.431257 C194.506336,161.891452 196.298154,163.310589 198.110326,164.667963 C191.183787,168.842556 183.854737,172.420929 176.223542,175.320965 C180.230393,183.341335 184.861538,190.991831 190.096624,198.16893 C211.238746,191.588051 232.743023,181.531619 254.911949,164.955721 C260.227747,108.668201 245.831087,59.8662432 216.856339,16.5966031 Z M85.4738752,135.09489 C72.8290281,135.09489 62.4592217,123.290155 62.4592217,108.914901 C62.4592217,94.5396472 72.607595,82.7145587 85.4738752,82.7145587 C98.3405064,82.7145587 108.709962,94.5189427 108.488529,108.914901 C108.508531,123.290155 98.3405064,135.09489 85.4738752,135.09489 Z M170.525237,135.09489 C157.88039,135.09489 147.510584,123.290155 147.510584,108.914901 C147.510584,94.5396472 157.658606,82.7145587 170.525237,82.7145587 C183.391518,82.7145587 193.761324,94.5189427 193.539891,108.914901 C193.539891,123.290155 183.391518,135.09489 170.525237,135.09489 Z"
							fill="#5865F2" fill-rule="nonzero"> </path>
					</g>
				</g>
			</svg>
		</a>
		<a class="social-link" href="#">
			<svg fill="#000000" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg" class="icon">
				<g id="SVGRepo_bgCarrier" stroke-width="0"></g>
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
				<g id="SVGRepo_iconCarrier">
					<path
						d="M488.1 414.7V303.4L300.9 428l83.6 55.8zm254.1 137.7v-79.8l-59.8 39.9zM512 64C264.6 64 64 264.6 64 512s200.6 448 448 448 448-200.6 448-448S759.4 64 512 64zm278 533c0 1.1-.1 2.1-.2 3.1 0 .4-.1.7-.2 1a14.16 14.16 0 0 1-.8 3.2c-.2.6-.4 1.2-.6 1.7-.2.4-.4.8-.5 1.2-.3.5-.5 1.1-.8 1.6-.2.4-.4.7-.7 1.1-.3.5-.7 1-1 1.5-.3.4-.5.7-.8 1-.4.4-.8.9-1.2 1.3-.3.3-.6.6-1 .9-.4.4-.9.8-1.4 1.1-.4.3-.7.6-1.1.8-.1.1-.3.2-.4.3L525.2 786c-4 2.7-8.6 4-13.2 4-4.7 0-9.3-1.4-13.3-4L244.6 616.9c-.1-.1-.3-.2-.4-.3l-1.1-.8c-.5-.4-.9-.7-1.3-1.1-.3-.3-.6-.6-1-.9-.4-.4-.8-.8-1.2-1.3a7 7 0 0 1-.8-1c-.4-.5-.7-1-1-1.5-.2-.4-.5-.7-.7-1.1-.3-.5-.6-1.1-.8-1.6-.2-.4-.4-.8-.5-1.2-.2-.6-.4-1.2-.6-1.7-.1-.4-.3-.8-.4-1.2-.2-.7-.3-1.3-.4-2-.1-.3-.1-.7-.2-1-.1-1-.2-2.1-.2-3.1V427.9c0-1 .1-2.1.2-3.1.1-.3.1-.7.2-1a14.16 14.16 0 0 1 .8-3.2c.2-.6.4-1.2.6-1.7.2-.4.4-.8.5-1.2.2-.5.5-1.1.8-1.6.2-.4.4-.7.7-1.1.6-.9 1.2-1.7 1.8-2.5.4-.4.8-.9 1.2-1.3.3-.3.6-.6 1-.9.4-.4.9-.8 1.3-1.1.4-.3.7-.6 1.1-.8.1-.1.3-.2.4-.3L498.7 239c8-5.3 18.5-5.3 26.5 0l254.1 169.1c.1.1.3.2.4.3l1.1.8 1.4 1.1c.3.3.6.6 1 .9.4.4.8.8 1.2 1.3.7.8 1.3 1.6 1.8 2.5.2.4.5.7.7 1.1.3.5.6 1 .8 1.6.2.4.4.8.5 1.2.2.6.4 1.2.6 1.7.1.4.3.8.4 1.2.2.7.3 1.3.4 2 .1.3.1.7.2 1 .1 1 .2 2.1.2 3.1V597zm-254.1 13.3v111.3L723.1 597l-83.6-55.8zM281.8 472.6v79.8l59.8-39.9zM512 456.1l-84.5 56.4 84.5 56.4 84.5-56.4zM723.1 428L535.9 303.4v111.3l103.6 69.1zM384.5 541.2L300.9 597l187.2 124.6V610.3l-103.6-69.1z">
					</path>
				</g>
			</svg>
		</a>
	</div> -->

	<!-- 

	<div id="nmh-navicon" class="NMH-g-plugin NMH-g-navicon">
		<button class="Jnmh-btnlogo"></button>
		<ins class="Jnmh-btnlogohover"></ins>
		<ul class="Jnmh-m-submenu">
			<li class="Jnmh-subli">
				<dl class="Jnmh-subdl">
					<dt class="NMH-subdt">
						<img src="<%= request.getContextPath()%>/images/login.png" width="45px" height="45px" alt="登录" title="登录">
					</dt>
					<dd class="NMH-subdd"></dd>
				</dl>
			</li>
			<li class="Jnmh-subli">
				<dl class="Jnmh-subdl">
					<dt class="NMH-subdt">
						<img src="<%= request.getContextPath()%>/images/register.png" width="45px" height="45px" alt="注册" title="注册">

					</dt>
					<dd class="NMH-subdd"></dd>
				</dl>
			</li>
			<li class="Jnmh-subli">
				<dl class="Jnmh-subdl">
					<dt class="NMH-subdt">
						<img src="<%= request.getContextPath()%>/images/about.png" width="45px" height="45px" alt="关于" title="关于未来视界">

					</dt>
					<dd class="NMH-subdd"></dd>
				</dl>
			</li>
			<li class="Jnmh-subli">
				<dl class="Jnmh-subdl">
					<dt class="NMH-subdt">
						<img src="<%= request.getContextPath()%>/images/logout.png" width="45px" height="45px" alt="登出" title="登出">
					</dt>
					<dd class="NMH-subdd"></dd>
				</dl>
			</li>
			<li class="Jnmh-subli">
				<dl class="Jnmh-subdl">
					<dt class="NMH-subdt">
						<img src="<%= request.getContextPath()%>/images/toggle.png" width="35px" height="35px" alt="切换背景" title="切换背景">

					</dt>
					<dd class="NMH-subdd"></dd>
				</dl>
			</li>
		</ul> -->
	<!-- </div> -->
<%@ include file="../sidebar/Sidebar.jsp" %>
<!-- 图案开始 -->
<ul class="example-2">
	<li class="icon-content">
		<a
		  href="https://www.bilibili.com/"
		  aria-label="Bilibili"
		  data-social="bilibili"
		>
		  <div class="filled"></div>
		  <svg
			t="1716543236376"
			class="icon"
			viewBox="0 0 1024 1024"
			version="1.1"
			xmlns="http://www.w3.org/2000/svg"
			p-id="1487"
			width="16"
			height="16"
			fill="currentColor"
		  >
			<path
			  d="M306.005333 117.632L444.330667 256h135.296l138.368-138.325333a42.666667 42.666667 0 1 1 60.373333 60.373333l-78.037333 77.952L789.333333 256A149.333333 149.333333 0 0 1 938.666667 405.333333v341.333334a149.333333 149.333333 0 0 1-149.333334 149.333333h-554.666666A149.333333 149.333333 0 0 1 85.333333 746.666667v-341.333334A149.333333 149.333333 0 0 1 234.666667 256h88.96L245.632 177.962667a42.666667 42.666667 0 0 1 60.373333-60.373334zM789.333333 341.333333h-554.666666a64 64 0 0 0-63.701334 57.856L170.666667 405.333333v341.333334a64 64 0 0 0 57.856 63.701333L234.666667 810.666667h554.666666a64 64 0 0 0 63.701334-57.813334L853.333333 746.666667v-341.333334A64 64 0 0 0 789.333333 341.333333zM341.333333 469.333333a42.666667 42.666667 0 0 1 42.666667 42.666667v85.333333a42.666667 42.666667 0 1 1-85.333333 0v-85.333333a42.666667 42.666667 0 0 1 42.666666-42.666667z m341.333334 0a42.666667 42.666667 0 0 1 42.666666 42.666667v85.333333a42.666667 42.666667 0 1 1-85.333333 0v-85.333333a42.666667 42.666667 0 0 1 42.666667-42.666667z"
			  p-id="1487"
			></path>
		  </svg>
		</a>
		<div class="tooltip">Bilibili</div>
	</li>
	 <li class="icon-content">
	   <a href="https://www.github.com/" aria-label="GitHub" data-social="github">
		 <div class="filled"></div>
		 <svg
		   xmlns="http://www.w3.org/2000/svg"
		   width="16"
		   height="16"
		   fill="currentColor"
		   class="bi bi-github"
		   viewBox="0 0 16 16"
		   xml:space="preserve"
		 >
		   <path
			 d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27s1.36.09 2 .27c1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.01 8.01 0 0 0 16 8c0-4.42-3.58-8-8-8"
			 fill="currentColor"
		   ></path>
		 </svg>
	   </a>
	   <div class="tooltip">GitHub</div>
	 </li>
	 <!-- <li class="icon-content">
	   <a
		 href="https://www.instagram.com/"
		 aria-label="Instagram"
		 data-social="instagram"
	   >
		 <div class="filled"></div>
		 <svg
		   xmlns="http://www.w3.org/2000/svg"
		   width="16"
		   height="16"
		   fill="currentColor"
		   class="bi bi-instagram"
		   viewBox="0 0 16 16"
		   xml:space="preserve"
		 >
		   <path
			 d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.9 3.9 0 0 0-1.417.923A3.9 3.9 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.9 3.9 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.9 3.9 0 0 0-.923-1.417A3.9 3.9 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599s.453.546.598.92c.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.5 2.5 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.5 2.5 0 0 1-.92-.598 2.5 2.5 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233s.008-2.388.046-3.231c.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92s.546-.453.92-.598c.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92m-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217m0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334"
			 fill="currentColor"
		   ></path>
		 </svg>
	   </a>
	   <div class="tooltip">Instagram</div>
	 </li> -->
	 <li class="icon-content">
	   <a href="https://youtube.com/" aria-label="Youtube" data-social="youtube">
		 <div class="filled"></div>
		 <svg
		   xmlns="http://www.w3.org/2000/svg"
		   width="16"
		   height="16"
		   fill="currentColor"
		   class="bi bi-youtube"
		   viewBox="0 0 16 16"
		   xml:space="preserve"
		 >
		   <path
			 d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.01 2.01 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.01 2.01 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31 31 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.01 2.01 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A100 100 0 0 1 7.858 2zM6.4 5.209v4.818l4.157-2.408z"
			 fill="currentColor"
		   ></path>
		 </svg>
	   </a>
	   <div class="tooltip">Youtube</div>
	 </li>
	 <li class="icon-content scroll-to-top " id="scrollToTopBtn">
		<a
		
		
		  aria-label="Instagram"
		  data-social="instagram"
		>
		  <div class="filled"></div>
		  <svg
			xmlns="http://www.w3.org/2000/svg"
			width="16"
			height="16"
			fill="currentColor"
			class="bi bi-instagram"
			viewBox="0 0 16 16"
			xml:space="preserve"
		  >
		  <path
          fill-rule="evenodd"
          d="M8 12a.5.5 0 0 0 .5-.5V4.707l3.147 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 0 0 .708.708L7.5 4.707V11.5a.5.5 0 0 0 .5.5z"
        />
      </svg>
		</a>
		<div class="tooltip">Top</div>
	  </li>
  </ul>

   <!--图案结束  -->
</body>

</html>
<script src="<%= request.getContextPath()%>/js/Home.js"></script>
<script src="<%= request.getContextPath()%>/js/IconFont.js"></script>

<script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

