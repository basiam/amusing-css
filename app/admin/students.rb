ActiveAdmin.register Student do
  filter :email
  index do
    column :email
    column :created_at
    actions
  end
  form do |f|
    f.inputs "Student Details" do
      f.input :email
      f.input :nick
    end
    f.buttons
  end
end
