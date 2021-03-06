module CurrentUserConcern
    extend ActiveSupport::Concern
    included do
        before_action :set_current_user
    end
    
    def set_current_user
        if session[:user_id]
        #  @current_user = User.find(session[:user_id]).as_json(include: :information)
        @current_user = User.find(session[:user_id]).as_json(:include => [:information => {:include => :tax_information}])
        end
    end
end
