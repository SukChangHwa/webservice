<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="utf8"%>
<div>
  <h3>Editor Content:</h3>
  <div class="min-vh-80">
    <ckeditor :editor="editor" v-model="content" :config="editorConfig" ref="editor"></ckeditor>
  </div>
  <button type="button" class="btn btn-outline-primary col-lg-1 mt-3" @click="preview">preview</button>
  <div v-html="content"></div>
</div>