# if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_api-for-ll', :domain => :all
  # else
  #   Rails.application.config.session_store :cookie_store, key: '_api-for-ll'
  # end