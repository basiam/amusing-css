ActiveAdmin.register_page "Dashboard" do

  content :title => "Recent Students"  do
    ul do
      Student.recent(5).collect do |post|
        li link_to(post.nick, admin_student_path(post))
      end
    end
  end
  content :title => "Recent Lessons"  do
    ul do
      Lesson.recent(5).collect do |post|
        li link_to(post.title, admin_lesson_path(post))
      end
    end
  end

end
