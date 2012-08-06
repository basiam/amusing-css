class Answer < ActiveRecord::Base
  attr_accessible :body, :lesson_id, :student_id
  belongs_to :student
  belongs_to :lesson
  after_initialize :copy_draft

  def copy_draft
    self.body = self.lesson.draft unless self.body.present?
  end
end