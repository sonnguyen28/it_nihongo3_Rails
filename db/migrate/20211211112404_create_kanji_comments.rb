class CreateKanjiComments < ActiveRecord::Migration[6.0]
  def change
    create_table :kanji_comments do |t|
      t.integer :user_id
      t.integer :kanji_id
      t.text :comment
      t.timestamps
    end
  end
end
