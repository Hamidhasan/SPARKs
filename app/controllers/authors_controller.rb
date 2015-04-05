class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end
  
  def create
    @author = Author.new(params[:author])
    if @author.save
      sign_in(@author)
      redirect_to @author, notice: 'Author was successfully created!'
    else
      render action: "new"
    end
  end
  
  def show
    if signed_in?
      @author = Author.find(params[:id])
    else
      deny_access
    end
  end
end
