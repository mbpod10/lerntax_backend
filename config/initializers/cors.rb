Rails.application.config.middleware.insert_before 0, Rack::Cors do
  # if Rails.env == "production" 
  


# WHEN YOU GO TO DEPLOY REACT APP! YOU NEED TO CHANGE DOMAIN

  # else 
 
    allow do
      origins 'http://localhost:3001'  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
  # end
  allow do
    origins 'https://lerntax-clients.surge.sh'  
    resource '*',
      headers: :any, 
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end