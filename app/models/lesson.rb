class Lesson < ActiveRecord::Base
  attr_accessible :position, :clue, :draft, :title, :body, :goal, :visible
  scope :recent, order("created_at DESC")
  scope :visible, where("visible = ?", true)
  default_scope order("position ASC")

  def next
    Lesson.visible.where("position > ?", self.position).first || Lesson.visible.first
  end
end
