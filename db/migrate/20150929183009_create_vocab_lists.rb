class CreateVocabLists < ActiveRecord::Migration
  def change
    create_table :vocab_lists do |t|
      t.string :title
      t.references :book, index: true, foreign_key: true
      t.integer :chapter_id

      t.timestamps null: false
    end
  end
end
