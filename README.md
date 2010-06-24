
Add this line in your `scripts_and_styles.html.haml` partial or `application.html.haml` layout.

    -if using_tiny_mce?
      :javascript
        tinymce.PluginManager.load('tutsimage', '/javascripts/tutsimage/editor_plugin_src.js');             
        tinymce.PluginManager.load('atd-tinymce', '/plugin_assets/community_engine_spellcheck/javascripts/atd-tinymce/editor_plugin_src.js');
