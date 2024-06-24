<%@ page import="po.User" %><%--
  Created by IntelliJ IDEA.
  User: 14158
  Date: 2024/6/14
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="../errorPage/ErrorPage.jsp" isELIgnored="false" %>
<%
  User currentUser = (User) session.getAttribute("currentUser");
%>
<!-- 侧边栏开始 -->
<nav class="menu" id="menu">
  <div class="actionsBar" style="padding: 0 0.4rem;">
    <div>
      <button id="menuBtn" type="button"><i class="iconfont icon-hanbaocaidan"></i></button>
      <h3 class="menuText">
        <%= currentUser != null ? currentUser.getAccount() : "咸鱼" %>
      </h3>
    </div>
  </div>
  <ul class="optionsBar">
    <li class="menuItem">
      <a href="<%= request.getContextPath() %>/home/Home.jsp" class="menuOption" style="padding: 0 0.65rem;">
        <i class="iconfont icon-shouye"></i>
        <h5 class="menuText" style="text-align: center; margin-right: 12px;">主页</h5>
      </a>
    </li>
    <li class="menuBreak">
      <hr>
    </li>
    <li class="menuItem erweima">
      <button type="button" class="menuOption">
        <i class="iconfont icon-erweima" ></i>
        <h5 class="menuText">网站二维码</h5>
      </button>
    </li>
    <%
      if (currentUser != null) {
        System.out.println("不为空");
    %>
    <li class="menuItem">
      <a href="<%= request.getContextPath() %>/logout" class="menuOption" style="padding: 0 0.65rem; color: white">
        <i class="iconfont icon-tuichu"></i>
        <h5 class="menuText" style="text-align: center; margin-right: 12px;">退出登录</h5>
      </a>
    </li>
    <%
    } else {
    %>
    <li class="menuItem">
      <a href="<%= request.getContextPath() %>/login/Login.jsp" class="menuOption" style="padding: 0 0.65rem; color: white">
        <i class="iconfont icon-tuichu"></i>
        <h5 class="menuText" style="text-align: center; margin-right: 12px;">登录</h5>
      </a>
    </li>
    <%
      }
    %>
  </ul>
  <div class="menu-about" id="menu-about"></div>
  <img src="<%= request.getContextPath() %>/images/erweima.png" alt="QR Code" class="popupImage" width="150" >

  <div class="menuUser">
    <a href="#">
      <div>
        <img src="<%= request.getContextPath() %>/images/avatar.jpg" alt="">
      </div>
      <h5 class="Username menuText">
        <%= currentUser != null ? currentUser.getAccount() : "咸鱼" %>
      </h5>
      <p class="menuText"><i class="iconfont icon-youjiantou"></i></p>
    </a>
  </div>
  <div class="themeBar">
    <div>
      <%--			<button type="button">--%>
      <a href="<%= request.getContextPath() %>/logout" class="menuOption" style="padding: 0 0.65rem; color: white">

        <i class="iconfont icon-tuichu">

        </i>
      </a>
      <%--			</button>--%>
    </div>
  </div>
</nav>
<!-- 侧边栏结束 -->