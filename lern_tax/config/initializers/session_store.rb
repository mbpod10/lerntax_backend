#NEED TO CHANGE THIS ONCE DEPLOYED

if Rails.env === "production"
    Rails.application.config.session_store :cookie_store, 
    key: "_authentication_app", domain: "localhost:3000", same_site: :none
    
    else 
        Rails.application.config.session_store :cookie_store, 
        key: "_authentication_app"
        #, domain: "localhost:3000", same_site: :lax
    end
    