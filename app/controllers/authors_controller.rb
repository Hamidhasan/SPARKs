class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end
  
  def create
    @author = Author.new(params[:author])
    if @author.save
      redirect_to @author, notice: 'Author was successfully created!'
    else
      render action: "new"
    end
  end
  
  def show
    @author = Author.find(params[:id])
  end
end
