ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => "Recent Students"  do
    columns do
      column do
        panel "Recent Lessons" do
           ul do
             Lesson.recent.limit(5).map do |l|
               li link_to(l.title, admin_lesson_path(l))
             end
           end
        end
      end
    end
  end

end
