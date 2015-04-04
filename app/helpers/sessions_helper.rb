module SessionsHelper
  def sign_in(author)
    session[:author_id] = author.id
    self.current_author = author
  end
  
  def current_author=(author)
    @current_author = author
  end
  
  def current_author
    @current_author ||= Author.find(session[:author_id]) if session[:author_id]
  end
  
  def signed_in?
    !current_author.nil?  
  end
  
  def sign_out
    session[:author_id] = nil
    self.current_author = nil
  end
  
  def current_author?(author)
    author == current_author
  end
  
  def deny_access
    redirect_to signin_path, :notice => "Please sign in to access this page"
  end
end
