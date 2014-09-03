ActiveAdmin.register AdminUser, :as => "Admin" do
  filter :email
  index do
    column :email
    actions
  end
  form do |f|
    f.inputs "Admin Details" do
      f.input :email
    end
    f.buttons
  end
  controller do
    def permitted_params
      params.permit!
    end
  end
end
