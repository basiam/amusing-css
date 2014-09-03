class Student < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :recent, -> { order("created_at DESC") }

  has_many :answers
end
