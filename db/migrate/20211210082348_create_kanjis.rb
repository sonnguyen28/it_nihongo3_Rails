class CreateKanjis < ActiveRecord::Migration[6.0]
  def change
    create_table :kanjis do |t|
      t.string :kanji
      t.string :kun
      t.string :on
      t.string :description

      t.timestamps
    end
  end
end
