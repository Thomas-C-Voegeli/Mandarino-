class HighlightInstance < ActiveRecord::Base
  belongs_to :user

  def self.increment_instance(word)
  	current_instance = HighlightInstance.find_by(character: word)
    if current_instance == nil
  	  HighlightInstance.create(user_id: current_user.id, character: word, count: 1)
    else
      current_count = current_instance.count
  	  new_count = current_count + 1
  	  current_instance.update_attribute(:count, new_count) 
    end
  end

end
