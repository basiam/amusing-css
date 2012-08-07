class Lesson < ActiveRecord::Base
  attr_accessible :position, :clue, :draft, :title, :body, :goal
  scope :recent, order("created_at DESC")

  def next
    Lesson.order("position ASC").where("position > ?", self.position).first ||Lesson.order("position ASC").first
  end
end
