class Location < ActiveRecord::Base
  has_many :posts

  validates :name, :neighborhood, :presence => true
end
