class CreateHighlightInstances < ActiveRecord::Migration
  def change
    create_table :highlight_instances do |t|
      t.string :character
      t.integer :count
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
