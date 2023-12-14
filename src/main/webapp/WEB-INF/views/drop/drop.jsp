
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="utf8"%>
<div class="row">
  <div class="col-lg-12 col-12 mx-auto">
    <div class="card card-body mt-4">
      <h6 class="mb-0">Froala - Drop</h6>
      <hr class="horizontal dark my-3">
      <div id="drag-smile" style="border: solid 1px #CCC; width: 300px;" draggable="true">
        <img src="https://cdnjs.cloudflare.com/ajax/libs/emojione/2.0.1/assets/svg/1f600.svg" width="32" /> Drag Me to insert a smile.
      </div>
      <br />
      <div id="drag-text" style="border: solid 1px #CCC; padding: 5px; width: 300px;" draggable="true">
        <input type="checkbox">사용 <input type="checkbox"> 사용안함
      </div>
      <br />
      <div id="froala-editor"></div>
      <button id="btPreview" type="button" class="btn btn-outline-primary col-lg-1 mt-3">preview</button>
      <div class="card card-frame">
        <div class="card-body" id="preview"></div>
      </div>
    </div>
  </div>
</div>
