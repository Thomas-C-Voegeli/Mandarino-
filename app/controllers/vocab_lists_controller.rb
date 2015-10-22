class VocabListsController < ApplicationController
  def index
	if !logged_in?
  	  redirect_to login_path
  	else
  	  render :index
  	end
  end
end
