require_relative 'boot'

require 'rails/all'
# require 'same_site_cookies'
# class SameSiteCookies

#   def initialize(app)
#     @app = app
#   end

#   def call(env)
#     status, headers, body = @app.call(env)

#     set_cookie_header = headers['Set-Cookie']

#     if set_cookie_header && !(set_cookie_header =~ /SameSite\=/)

#       headers['Set-Cookie'] << ';' if !(set_cookie_header =~ /;$/)
#       headers['Set-Cookie'] << ' SameSite=None'
#       headers['Set-Cookie'] << '; Secure' if env['rack.url_scheme'] == 'https';

#     end

#     [status, headers, body]
#   end
# end
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LernTax
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

# Rails.application.config.middleware.insert_before(ActionDispatch::Cookies, SameSiteCookies)
