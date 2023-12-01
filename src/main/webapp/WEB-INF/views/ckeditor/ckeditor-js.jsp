<%@ page session="false" pageEncoding="utf8"%>
<!--   tinymce   -->
<script src="https://cdn.tiny.cloud/1/z8fkg0k64e0o1zu7twgv04nhbz4tqxdkwvngvdmg0pf7oyr3/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
ClassicEditor
.create( document.querySelector( '#editor' ), {
	// toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
} )
.then( editor => {
	window.editor = editor;
} )
.catch( err => {
	console.error( err.stack );
} );

  document.getElementById("btPreview").addEventListener('click', conentPreview);
  function conentPreview() {
    document.querySelector('#preview').innerHTML = document.querySelector( '#editor' ).getInnerHTML();
  }
</script>