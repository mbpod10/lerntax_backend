# class SessionsController < ApplicationController
#     include CurrentUserConcern
#     def create
#         user = User
#                 .find_by(email: params['user']['email'])
#                 .try(:authenticate, params['user']['password'])
        
#         if user
#              session[:user_id] = user.id
#             render json: {
#                 status: :created,
#                 logged_in: true,
#                 user: user
#             }
#         else
#             render json: {status: 401}
#         end

#     end

#     def logged_in
#         if @current_user
#             render json: {
#                 logged_in: true,
#                 user: @current_user
#             }
#         else
#             render json: {
#                 logged_in: false
#             }
#         end
#     end

#     def logout
#         reset_session
#         render json: {status: 200, logged_out: true}
#     end
# end

#curl --header "Content-Type: application/json" --request POST --data '{"user": {"email": "bore@gmail.com", "password": "101010", "password_confirmation": "101010"}}' http://localhost:3000/registrations

class SessionsController < ApplicationController
    # response.headers['Set-Cookie'] = 'SameSite=None'
    include CurrentUserConcern
    def create
        user = User
            .find_by(email: params['user']['email'])
            .try(:authenticate, params['user']['password'])
            

        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                logged_in: true, 
                user: user
        }
        else
            render json: {status: "Invalid Email or Password"}
        end        
    end
    def logged_in
        if @current_user
            render json: {
                logged_in: true,
                user: @current_user 
            }
        else
            render json: {
                logged_in: false
            }
        end    
    end

    def logout
        reset_session
        render json: {status: 200, logg_out: true}
    end
end