<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/froala_editor.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/froala_style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/plugins/code_view.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/plugins/colors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/plugins/emoticons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/plugins/image_manager.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/plugins/image.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/plugins/line_breaker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/plugins/table.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/plugins/video.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/codemirror.min.css">
</head>
<body>
  <!-- Page Header -->
  <tiles:insertAttribute name="topbar" />
  <!-- Page Contents -->
  <tiles:insertAttribute name="body" />
  <!-- Page Footer -->
  <tiles:insertAttribute name="footer" />
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/codemirror.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/mode/xml/xml.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/froala_editor.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/align.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/code_beautifier.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/code_view.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/colors.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/draggable.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/emoticons.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/font_size.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/font_family.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/line_breaker.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/link.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/lists.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/inline_style.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/table.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/plugins/video.min.js"></script>
  <!-- Custom scripts for all pages-->
  <tiles:insertAttribute name="customJs" />
</body>
</html>