class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  # ...
  validates :title, uniqueness: true
  validates :title, presence: true
  # ^--Title--^
  validates :overview, uniqueness: true
  validates :overview, presence: true
  # ^--Overview--^
end
