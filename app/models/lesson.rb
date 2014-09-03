class Lesson < ActiveRecord::Base

  scope :recent, -> { order("created_at DESC") }
  scope :visible, -> { where(visible: true) }
  default_scope { order("position ASC")}

  def next
    Lesson.visible.where("position > ?", position).first || Lesson.visible.first
  end
end
