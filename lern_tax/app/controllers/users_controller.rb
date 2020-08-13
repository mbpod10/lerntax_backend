class UsersController < ApplicationController
    def index
        @users = User.all
        #render json: @users.to_json(include: :information)
        render json: @users.to_json(:include => [:information => {:include => :tax_information}])
    end
    def show
        @user = User.find(params[:id])
        render json: @user.to_json(include: :information)
    end
end