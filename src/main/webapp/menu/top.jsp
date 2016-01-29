<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "web.tool.Tool" %>
<%
String root = request.getContextPath();
// 프로젝트 경로 자동 생성
// /ws_web/notice_v1jq - > /notice_v1jq
%>

<link type="text/css" href="<%=root %>/menu/menu.css" rel="stylesheet" />
<script type="text/javascript" src="<%=root %>/menu/jquery.js"></script>
<script type="text/javascript" src="<%=root %>/menu/menu.js"></script>

<style type="text/css">
* { margin:0;
    padding:0;
}
html { background:white; }
body {
    margin:0px 0px;
   /* overflow:hidden; 스크롤바 제거*/
   /* background:#000 url(images/back.jpg) no-repeat; */
}
div#copyright {
    display:none;
}
</style>
<br>
<DIV style='text-align: left; margin:0px auto; padding: 0px; width:80%'>
  <IMG src='<%=root %>/menu/images/top_image.jpg' width='100%' height='300px'><br>

<div id="menu">
    <ul class="menu">
        <li><a href="<%=root%>"><span>Home</span></a></li>
        <li><a href="<%=root%>/noticev3/list.jsp"><span>공지사항</span></a></li>
        <li><a href="<%=root%>/newsv2/list.jsp"><span>선수단 정보</span></a></li>
        <li><a href="#" class="parent"><span>Community</span></a>
            <div><ul>
                <li><a href="<%=root%>/urlv2/list.jsp"><span>유용한 웹사이트</span></a></li>
                <li><a href="<%=root%>/pdsv3/list.jsp"><span>영화</span></a></li>
                <li><a href="<%=root%>/hico/list.jsp"><span>여행</span></a></li>
                <li><a href="<%=root%>/theaterv3/list.jsp"><span>맛집</span></a></li>
                <li><a href="<%=root%>/theaterv3/list.jsp"><span>사진</span></a></li>
            </ul></div>
        </li>
        <li><a href="#" class="parent"><span>SW Development</span></a>
            <div><ul>
                <li><a href="#"><span>개발 소스</span></a></li>
                <li><a href="#"><span>JAVA</span></a></li>
                <li><a href="#"><span>JSP</span></a></li>
                <li><a href="#"><span>UI/UX</span></a></li>
                <li><a href="#"><span>Spring</span></a></li>
                <li><a href="#"><span>Hybrid App</span></a></li>
            </ul></div>
        </li>
        <li><a href="#"><span>Profile</span></a></li>
        <%
        if(Tool.isMaster(request) || Tool.isAdmin(request)){
        %>
          <li class="last"><a href="<%=root%>/admin1/logout_proc.jsp"><span><%=session.getAttribute("email") %> Logout</span></a></li>
        <%
        }else{
        %>
          <li class="last"><a href="<%=root%>/admin1/login_ck_form.jsp"><span>Admin</span></a></li>
        <%
        }
        %>
    </ul>
  </div>
    <div id="copyright">Copyright © 2016 <a href="http://apycom.com/">Apycom jQuery Menus</a></div>
</DIV>




