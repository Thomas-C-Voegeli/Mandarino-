class BooksController < ApplicationController
  def index
  	if !logged_in?
  		redirect_to login_path
  	else
  		@books = Book.all
  		render :index
  	end
  end
end
