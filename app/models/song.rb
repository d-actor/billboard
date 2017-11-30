class Song < ApplicationRecord
  belongs_to :board
  has_one :artist
end
