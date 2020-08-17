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
    # DELETE /user/1
  # DELETE /user/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # respond_to do |format|
    #   format.html { redirect_to tax_informations_url, notice: 'User was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
    render json: @user
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_tax_information
    @user = User.find(params[:id])
  end
end