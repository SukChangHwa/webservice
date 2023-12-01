<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/resources/vendor/argon/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/vendor/argon/assets/img/favicon.png">
<title>DX Pilot</title>
<!-- Fonts and icons -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="${pageContext.request.contextPath}/resources/vendor/argon/assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/vendor/argon/assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
<link href="${pageContext.request.contextPath}/resources/vendor/argon/assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="${pageContext.request.contextPath}/resources/vendor/argon/assets/css/argon-dashboard.css?v=2.0.5" rel="stylesheet" />
<!-- Froala -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/css/froala_editor.pkgd.min.css">
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

<link type="text/css" href="${pageContext.request.contextPath}/resources/vendor/ckeditor5/css/sample.css" rel="stylesheet" media="screen" />

<!-- include libraries(jQuery, bootstrap) -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- include summernote css/js-->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body class="g-sidenav-show bg-gray-100">
  <div class="min-height-300 bg-primary position-absolute w-100"></div>
  <tiles:insertAttribute name="left" />
  <main class="main-content position-relative border-radius-lg ">
    <!-- Navbar -->
    <tiles:insertAttribute name="topbar" />
    <!-- End Navbar -->
    <div class="container-fluid py-4">
      <!-- Page Contents -->
      <tiles:insertAttribute name="body" />
      <!-- Page Footer -->
      <tiles:insertAttribute name="footer" />
    </div>
  </main>
  <div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="fa fa-cog py-2"> </i>
    </a>
    <div class="card shadow-lg">
      <div class="card-header pb-0 pt-3 bg-transparent ">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Argon Configurator</h5>
          <p>See our dashboard options.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="fa fa-close"></i>
          </button>
        </div>
        <!-- End Toggle Button -->
      </div>
      <hr class="horizontal dark my-1">
      <div class="card-body pt-sm-3 pt-0 overflow-auto">
        <!-- Sidebar Backgrounds -->
        <div>
          <h6 class="mb-0">Sidebar Colors</h6>
        </div>
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="badge-colors my-2 text-start">
            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
          </div>
        </a>
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Sidenav Type</h6>
          <p class="text-sm">Choose between 2 different sidenav types.</p>
        </div>
        <div class="d-flex">
          <button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
          <button class="btn bg-gradient-primary w-100 px-3 mb-2" data-class="bg-default" onclick="sidebarType(this)">Dark</button>
        </div>
        <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
        <!-- Navbar Fixed -->
        <div class="d-flex my-3">
          <h6 class="mb-0">Navbar Fixed</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
          </div>
        </div>
        <hr class="horizontal dark mb-1">
        <div class="d-flex my-4">
          <h6 class="mb-0">Sidenav Mini</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarMinimize" onclick="navbarMinimize(this)">
          </div>
        </div>
        <hr class="horizontal dark my-sm-4">
        <div class="mt-2 mb-5 d-flex">
          <h6 class="mb-0">Light / Dark</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/plugins/choices.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/plugins/quill.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/plugins/flatpickr.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/plugins/dropzone.min.js"></script>
  <!-- Kanban scripts -->
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/plugins/dragula/dragula.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/plugins/jkanban/jkanban.js"></script>
  <script>
			var win = navigator.platform.indexOf('Win') > -1;
			if (win && document.querySelector('#sidenav-scrollbar')) {
				var options = {
					damping : '0.5'
				}
				Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
						options);
			}
		</script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath}/resources/vendor/argon/assets/js/argon-dashboard.min.js?v=2.0.5"></script>
  <!-- froala -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/codemirror.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/mode/xml/xml.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/froala_editor_4.1.3/js/froala_editor.pkgd.min.js"></script>
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

  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/ckeditor5/js/ckeditor.js"></script>

  <!-- Custom scripts for all pages-->
  <tiles:insertAttribute name="customJs" />
</body>
</html>