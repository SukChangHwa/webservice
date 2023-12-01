<%@ page session="false" pageEncoding="utf8"%>
<script>

// Vue.js 3 앱 인스턴스 생성
const { createApp } = Vue
var app = createApp({
  data(){
    return {
      editor: ClassicEditor,
      content: '<p>Content of the editor.</p>',
      editorConfig: {
      }
    };
  },
  mounted(){
    // 에디터를 렌더링한 이후에 크기를 조절
    console.log(this.$data.content);
    this.$nextTick(() => {
      this.resizeEditor();
    });
  },
  methods:{
    resizeEditor() {
      console.log(this.$data.editor);
    },
    preview(newContent){
      debugger;
    }
  }
});

app.component('ckeditor', CKEditor.component);
app.component('left-vue', LeftVue);
app.mount('#appVue');

</script>