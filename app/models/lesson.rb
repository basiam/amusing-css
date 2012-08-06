class Lesson < ActiveRecord::Base
  attr_accessible :position, :clue, :draft, :title, :body, :goal
  scope :recent, order("created_at DESC")
end
