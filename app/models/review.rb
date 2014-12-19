class Review < ActiveRecord::Base
  belongs_to :restaurant

  #validates_presence_of :restuarant_id

  validates_presence_of :rating


end
