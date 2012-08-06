class AddPositionToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :position, :integer
    add_column :lessons, :body, :text
  end
end
