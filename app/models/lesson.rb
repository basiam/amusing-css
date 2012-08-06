class Lesson < ActiveRecord::Base
  attr_accessible :answer, :clue, :draft, :title
  scope :recent, order("created_at DESC")
end
