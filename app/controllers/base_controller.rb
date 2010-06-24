# require 'community_engine_spellcheck'
module TinyMCE
  module OptionValidator
    class << self  
      def valid_options=(array)
        @@valid_options.concat(array)
      end

      def valid_options
        @@valid_options
      end
    end
  end
end

TinyMCE::OptionValidator.valid_options = ['atd_rpc_id', 'atd_rpc_url', 'atd_css_url', 'atd_button_url']  

AppConfig.default_mce_options.merge!({
  :atd_rpc_id => AppConfig.atd_spellcheck_key,
  :atd_rpc_url => '/base/atd_spellcheck?url=',
  :atd_css_url => '/plugin_assets/community_engine_spellcheck/javascripts/atd-tinymce/css/content.css',
  :atd_button_url => "/plugin_assets/community_engine_spellcheck/javascripts/atd-tinymce/atdbuttontr.gif"  
})

class BaseController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:atd_spellcheck]

  def atd_spellcheck
    response = Net::HTTP.post_form(URI.parse("http://service.afterthedeadline.com#{params[:url]}"), {'data'=>params[:data], 'key'=> AppConfig.atd_spellcheck_key})
    render :xml => response.body
  end

end