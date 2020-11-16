class Genre < ApplicationRecord
  
  has_many :moviegenres
  has_many :movies, through: :moviegenres
end
