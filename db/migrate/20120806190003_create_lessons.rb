class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :answer
      t.text :clue
      t.text :draft

      t.timestamps
    end
  end
end
