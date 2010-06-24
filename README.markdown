**Install**

1. `$ git submodule add git://github.com/bborn/community_engine_spellcheck.git vendor/plugins/community_engine_spellcheck`

2. Add a unique key to your `application.yml`:

        atd_spellcheck_key: 'YOUR_SPECIAL_KEY'    


3. Override the `scripts_and_styles.html.haml` partial and replace this line:

        = tiny_mce if using_tiny_mce?
    
  With this:

        -if using_tiny_mce?
          :javascript
            tinymce.PluginManager.load('atd-tinymce', '/plugin_assets/community_engine_spellcheck/javascripts/atd-tinymce/editor_plugin.js');
          = tiny_mce        
