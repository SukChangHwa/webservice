  <script>
    (function () {
      const editorInstance = new FroalaEditor('#edit', {
        enter: FroalaEditor.ENTER_P,
        events: {
          drop: function (dropEvent) {
            console.log('drop')
            const instance = this
            editor.markers.insertAtPoint(dropEvent.originalEvent)
            var $marker = editor.$el.find('.fr-marker')
            $marker.replaceWith(FroalaEditor.MARKERS)
            editor.selection.restore()

            // Insert HTML.
            editor.html.insert('Element dropped here.')
            dropEvent.preventDefault()
            dropEvent.stopPropagation()
            return false
          }
        }
      })

      // For Firefox to work.
      document.getElementById('dragme').addEventListener('dragstart', function (e) {
        e.dataTransfer.setData('Text', this.id)
      })
    })()
  </script>