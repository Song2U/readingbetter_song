<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html>
<head>
<title>ReadingBetter_Admin</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/readingbetter/assets/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="/readingbetter/assets/css/board.css" rel="stylesheet" type="text/css">
<link href="/readingbetter/assets/css/admin.css" rel="stylesheet" type="text/css">
</head>
<body>
   <div class="container-fluid">
      <c:import url='/WEB-INF/views/admin/header.jsp'/>
      <br><br><h4>카드 수정</h4>      <br><br>
      <form action="/readingbetter/admin/cardmodifyform/modify" method="post">
      <input type="hidden" name="no" value="${cardVo.no }"/>
      <table class="table table-bordered" id="board">
          <tr>
             <th class="active">이름</th>
             <td><input type="text" class="form-control" id="card-name" name="title" value="${cardVo.title }"></td>
          </tr>
          <tr>
             <th class="active">내용</th>
             <td><input type="text" class="form-control" id="card-content" name="content" value="${cardVo.content }"></td>
          </tr>
          <tr>
             <th class="active">능력</th>
             <td><input type="text" class="form-control" id="card-power" name="skill" value="${cardVo.skill }"></td>
          </tr>
          <tr>
             <th class="active">점수</th>
             <td><input type="text" class="form-control" id="card-score" name="bonus" value="${cardVo.bonus }"></td>
          </tr>
          <tr>
             <th class="active">사진</th>
             <td><input type="text" class="form-control" id="card-pic" name="cover" value="${cardVo.cover }"></td>
          </tr>
      </table>
      <a href="/readingbetter/admin/cardlist" id="admin-button" type="button" class="btn btn-default">목록</a>
      <button id="admin-button" type="submit" class="btn btn-default">수정</button>
      </form>  
   </div>
</body>
</html>