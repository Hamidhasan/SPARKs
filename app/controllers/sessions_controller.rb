class SessionsController < ApplicationController
  def new
  end
  
  def create
    author = Author.authenticate(params[:session][:email], params[:session][:password])
    
    if author.nil?
      flash.now[:error] = "Invalid email/password combination!"
      render :new
    else
      sign_in author
      redirect_to author
    end
  end
  
  def destory
    sign_out
    redirect_to signin_path
  end
  
end
