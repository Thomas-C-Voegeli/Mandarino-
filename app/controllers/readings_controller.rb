class ReadingsController < ApplicationController
  
  def show
  	@reading = Reading.find(params[:id])
  end

  def index
  	if !logged_in?
  		redirect_to login_path
  	else
  		@readings = Reading.all
  		render :index
  	end
  end
end
