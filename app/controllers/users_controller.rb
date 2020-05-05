class UsersController < ApplicationController 
  
  def new 
    @user = user.create(params[:])
  end 
  
  def create
    User.create(user_params)
  end
 
  private
 
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
  
end 