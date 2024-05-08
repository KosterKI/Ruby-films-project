class Film < ApplicationRecord
  GENRES = %w[action comedy drama horror romance thriller sci-fi fantasy animation documentary musical western].freeze

  has_many :comments, as: :commentable, dependent: :destroy

  # validates
  validates :name, :year_of_creation, presence: true
  validates :description, length: { minimum: 4 }
end
