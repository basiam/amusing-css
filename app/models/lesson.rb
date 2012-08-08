class Lesson < ActiveRecord::Base
  attr_accessible :position, :clue, :draft, :title, :body, :goal, :visible
  scope :recent, order("created_at DESC")
  scope :visible, where("visible = ?", true)

  def next
    Lesson.visible.order("position ASC").where("position > ?", self.position).first ||
    Lesson.visible.order("position ASC").first
  end
end
