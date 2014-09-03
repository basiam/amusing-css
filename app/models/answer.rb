class Answer < ActiveRecord::Base
  belongs_to :student
  belongs_to :lesson
  after_initialize :copy_draft
  attr_reader :restart

  def copy_draft
    self.body = self.lesson.draft unless self.body.present?
  end

  def restart=(value)
    self.body = nil if value.present?
  end


end
