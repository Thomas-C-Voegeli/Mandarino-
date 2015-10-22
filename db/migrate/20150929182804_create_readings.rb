class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.string :title
      t.text :content
      t.references :book, index: true, foreign_key: true
      t.integer :chapter_id

      t.timestamps null: false
    end
  end
end
