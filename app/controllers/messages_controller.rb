class MessagesController < ApplicationController
  def index
    
  end

  def new
    # flash[:notice] = ["User successfully login"]
  end

  def something
    
  end

  def create
    @message = Message.new(message:params[:message],user:User.first)

    if @message.save
      flash[:notice] = ["Message post successfully"]
      #redirect_to new_user_path
      redirect_to "/messages"
    else
      flash[:error] = @message.errors.full_messages
      redirect_to "/messages"
    end
  
    # redirect_to "/messages"
  end
end
