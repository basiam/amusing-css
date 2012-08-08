ActiveAdmin.register Lesson do
  index do
    column :title
    column :position
    default_actions
  end
  show do |ad|
    attributes_table do
      row :title
      row :body
      row :draft
      row :goal
      row :clue
      row :visible
      row :position
    end
  end
end
