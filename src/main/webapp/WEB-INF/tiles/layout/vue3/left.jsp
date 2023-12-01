<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<template id="left-vue">
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
      <ul class="md:flex-col md:min-w-full flex flex-col list-none">
        <li class="items-center">
          <p id="input-comp" draggable="true" class="text-xs uppercase py-3 font-bold block" :class="[
                  isActive
                    ? 'text-emerald-500 hover:text-emerald-600'
                    : 'text-blueGray-700 hover:text-blueGray-500',
                ]">
            <i class="fas fa-tv mr-2 text-sm" :class="[isActive ? 'opacity-75' : 'text-blueGray-300']"></i> 입력 항목
          </p>
        </li>
        <ul>
    </div>
  </aside>
</template>
<script>
  var LeftVue = {
    template: '#left-vue',
    data : function() {
      return {
        menuItems : {},
      };
    },
    created : function() {
      console.log('Created from the child!');
    },
    mounted : function() {
      // Any logic you want to perform after the component is mounted
    },
    methods : {
    // Your methods go here
    },
  };

</script>
