class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # ------------
  validates_associated :movie
  validates_associated :list
  # ------------
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie, { scope: :list }
end
