class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :student_id
      t.integer :lesson_id
      t.text :body

      t.timestamps
    end
  end
end
