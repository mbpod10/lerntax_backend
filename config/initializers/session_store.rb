#NEED TO CHANGE THIS ONCE DEPLOYED

if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, 
    key: "_authentication_app", domain: "https://www.lern-tax.com"
else
        Rails.application.config.session_store :cookie_store, 
        key: "_authentication_app"
    end
    

    # if Rails.env == "production"
    #     Rails.application.config.session_store :cookie_store, 
    #     key: "_authentication_app", domain: "http://localhost:3000"
    #     elsif 
    #         Rails.application.config.session_store :cookie_store, 
    #         key: "_authentication_app", domain: 
    #     end
        