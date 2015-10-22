class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title_english
      t.string :title_chinese
      t.integer :series

      t.timestamps null: false
    end
  end
end
