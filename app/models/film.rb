class Film < ApplicationRecord
  GENRES = %w[action comedy drama horror romance thriller sci-fi fantasy animation]
  has_many :comments, as: :commentable, dependent: :destroy
  validates :year_of_creation, presence: true
  validates :description, length:{minimum:10}
  validates :name, length:{minimum:3}


end
