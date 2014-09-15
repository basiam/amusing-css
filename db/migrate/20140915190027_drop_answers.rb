class DropAnswers < ActiveRecord::Migration
  def up
    drop_table :answers
  end

  def down
    create_table :answers do |t|
      t.integer :student_id
      t.integer :lesson_id
      t.text :body

      t.timestamps
    end
  end
end
