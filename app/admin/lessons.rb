ActiveAdmin.register Lesson do
  index do
    column :title
    column :position
    actions
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
  controller do
    def permitted_params
      params.permit!
    end
  end
end
