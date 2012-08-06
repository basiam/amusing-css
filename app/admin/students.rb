ActiveAdmin.register Student do
  index do
    column :email
    default_actions
  end
  form do |f|
    f.inputs "Student Details" do
      f.input :email
      f.input :nick
    end
    f.buttons
  end
end
