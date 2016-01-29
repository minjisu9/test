<%@ page contentType="text/html; charset=UTF-8" %>
<!-- 화면 상단 메뉴 --> 
<%
String root = request.getContextPath();
// 프로젝트 경로 자동 생성
// /ws_web/notice_v1jq - > /notice_v1jq
%>

<!-- <DIV style='text-align: left; margin:0px auto; width:80%;'>
     <IMG src='<%=root %>/menu/images/top_image.jpg' width='100%' height='300px'><br>
     </DIV> -->   
<DIV style='text-align: left; margin:0px auto; width:100%;'>
  <IMG src='<%=root %>/menu/images/top_image.jpg' width='100%' height='300px'><br>
</DIV>
  <nav id ="topMenu">
   <ul>
    <li><a class='menuLink' href='<%=root %>/index.jsp'>　Home　</a></li>
    <li><a class='menuLink' href='<%=root %>/noticev3/list.jsp'>　공지 사항　</a></li>
    <li><a class='menuLink' href='<%=root %>/newsv2/list.jsp'>　선수단 정보　</a></li>
    <li><a class='menuLink' href='<%=root %>/urlv2/list.jsp'>　경기 일정　</a></li>
    <li><a class='menuLink' href='<%=root %>/hico/list.jsp'>　하이라이트　</a></li>
    <li><a class='menuLink' href="http://www.fcbayern.de/de/club/geschichte/" target="_blank">　구단 역사　</a></li>
    <li><a class='menuLink' href='<%=root %>/pdsv3/list.jsp'>　사진　</a></li>
    <li><a class='menuLink' href='<%=root %>/theaterv3/list.jsp'>　정보　</a></li>
    <%
    if(session.getAttribute("act") == null){
    %>
    <li><a class='menuLink' href='<%=root %>/admin1/login_ck_form.jsp'>　관리자 로그인　</a></li>
    <%
    }else{
    %>
    <li><a class='menuLink' href='<%=root %>/admin1/logout_proc.jsp'>　관리자 로그아웃　</a></li>
    <li><a class='menuLink' href='<%=root %>/admin1/list.jsp'>　관리자 목록　</a></li>
    <%
    }
    %>
   </ul>
  </nav>
