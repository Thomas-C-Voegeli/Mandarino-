class CreateVocabListEntries < ActiveRecord::Migration
  def change
    create_table :vocab_list_entries do |t|
      t.references :vocab_list, index: true, foreign_key: true
      t.references :entry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
