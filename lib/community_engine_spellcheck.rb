# module ::TinyMCE
#   module OptionValidator
#     @@valid_options = []
# 
#     class << self  
#       def valid_options=(array)
#         @@valid_options.concat(array)
#       end
# 
#       def valid_options
#         @@valid_options
#       end
#     end
#   end
# end
# 
# TinyMCE::OptionValidator.valid_options = ['atd_rpc_id', 'atd_rpc_url', 'atd_css_url', 'atd_button_url']  
# 
# # AppConfig.default_mce_options.merge!({
# #   :atd_rpc_id => 'CURBLY-3423u48904738905342',
# #   :atd_rpc_url => '/base/atd_spellcheck?url=',
# #   :atd_css_url => '/plugin_assets/community_engine_spellcheck/javascripts/atd-tinymce/css/content.css',
# #   :atd_button_url => "/plugin_assets/community_engine_spellcheck/javascripts/atd-tinymce/atdbuttontr.gif"  
# # })