<script>
    var dragCallback = function (e) {
      e.dataTransfer.setData('Text', this.id);
    };

    // For Firefox to work.
    document.querySelector('#drag-smile').addEventListener('dragstart', dragCallback);
    document.querySelector('#drag-text').addEventListener('dragstart', dragCallback);

    new FroalaEditor('div#froala-editor', {
      events: {
        initialized: function () {
          var editor = this;

          editor.events.on('drop', function (dropEvent) {
            // Focus at the current posisiton.
            editor.markers.insertAtPoint(dropEvent.originalEvent);
            var $marker = editor.$el.find('.fr-marker');
            $marker.replaceWith(FroalaEditor.MARKERS);
            editor.selection.restore();

            // Save into undo stack the current position.
            if (!editor.undo.canDo()) editor.undo.saveStep();

            // Insert HTML.
            if (dropEvent.originalEvent.dataTransfer.getData('Text') == 'drag-smile') {
              editor.html.insert('<span class="fr-emoticon fr-emoticon-img" style="background: url(https://cdnjs.cloudflare.com/ajax/libs/emojione/2.0.1/assets/svg/1f600.svg)">&nbsp;</span>');
            }
            else {
              editor.html.insert('Hello!');
            }

            // Save into undo stack the changes.
            editor.undo.saveStep();

            // Stop event propagation.
            dropEvent.preventDefault();
            dropEvent.stopPropagation();

            // Firefox show cursor.
            if (editor.core.hasFocus() && editor.browser.mozilla) {
              editor.events.disableBlur();
              setTimeout(function () {
                editor.$el.blur().focus();
                editor.events.enableBlur();
              }, 0);
            }

            return false;
          }, true);
        }
      }
    })
</script>