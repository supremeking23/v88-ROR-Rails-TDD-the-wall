class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(params.require(:user).permit(:username))
    if  @user == nil
      @user = User.new(params.require(:user).permit(:username))
      if @user.save
        flash[:notice] = ["User successfully login"]
        #redirect_to new_user_path
        redirect_to "/messages"
      else
        flash[:error] = @user.errors.full_messages
        redirect_to new_user_path
      end
    else
      # already has a user
      flash[:notice] = ["User successfully login"]
      #redirect_to new_user_path
      redirect_to "/messages"
    end

  end

  def logout 
    reset_session
    redirect_to new_user_path
  end
end
