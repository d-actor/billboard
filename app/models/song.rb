class Song < ApplicationRecord
  belongs_to :board
  has_one :artist
  accepts_nested_attributes_for :artist
end
