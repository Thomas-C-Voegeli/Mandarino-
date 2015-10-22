class VocabList < ActiveRecord::Base
  belongs_to :book
  has_many :vocab_list_entries
  has_many :entries, through: :vocab_list_entries
end
