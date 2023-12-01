<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
  <div class="sidenav-header">
    <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
    <a class="navbar-brand m-0" href="${pageContext.request.contextPath}/pilot/" target="_blank">
      <img src="${pageContext.request.contextPath}/resources/vendor/argon/assets/img/logo-ct-dark.png" class="navbar-brand-img h-100" alt="main_logo">
      <span class="ms-1 font-weight-bold"></span>
    </a>
  </div>
  <hr class="horizontal dark mt-0">
  <div class="collapse navbar-collapse  w-auto h-auto" id="sidenav-collapse-main">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a data-bs-toggle="collapse" href="#dashboardsExamples" class="nav-link " aria-controls="dashboardsExamples" role="button" aria-expanded="true">
          <div class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
            <i class="ni ni-shop text-primary text-sm opacity-10"></i>
          </div>
          <span class="nav-link-text ms-1">Web Editor</span>
        </a>
        <div class="collapse show" id="dashboardsExamples">
          <ul class="nav ms-4">
            <li class="nav-item ">
              <a class="nav-link " href="${pageContext.request.contextPath}/pilot/home">
                <span class="sidenav-mini-icon"> Q </span>
                <span class="sidenav-normal"> Quill </span>
              </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link " href="${pageContext.request.contextPath}/pilot/drop">
                <span class="sidenav-mini-icon"> F </span>
                <span class="sidenav-normal"> Froala - Drop </span>
              </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link " href="${pageContext.request.contextPath}/pilot/TinyMCE">
                <span class="sidenav-mini-icon"> T </span>
                <span class="sidenav-normal"> TinyMCE </span>
              </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link " href="${pageContext.request.contextPath}/pilot/summernote">
                <span class="sidenav-mini-icon"> T </span>
                <span class="sidenav-normal"> summernote </span>
              </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link " href="${pageContext.request.contextPath}/pilot/ckeditor">
                <span class="sidenav-mini-icon"> T </span>
                <span class="sidenav-normal"> ckeditor </span>
              </a>
            </li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</aside>