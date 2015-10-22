class EntriesController < ApplicationController
  include SessionsHelper
  def show
  	if request.xhr?  	
  		highlighted_words = params.key(nil)
  		@entry = Entry.find_by(character: highlighted_words)
  		HighlightInstance.increment_instance(highlighted_words)
  		render @entry
  	else
  		p "HIT ELSE"
  	end
  end

end
