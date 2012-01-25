config.after_initialize do
  if RAILS_ENV == 'development'
    ActiveSupport::Dependencies.load_once_paths = ActiveSupport::Dependencies.load_once_paths.select {|path| (path =~ /(community_engine_spellcheck)/).nil? }  
  end  
    
end 

require_plugin 'community_engine'

