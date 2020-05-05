class UsersController < ApplicationController 
  
  def new 
    @user = User.new
  end 
  
  def create
    User.new(user_params)
  end
 
  private
 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
  
end 