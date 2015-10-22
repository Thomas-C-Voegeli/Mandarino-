class Entry < ActiveRecord::Base
  has_many :vocab_list_entries
  has_many :vocab_lists, through: :vocab_list_entries	
end

