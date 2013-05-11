class Location < ActiveRecord::Base
  has_many :posts

  validate :name, :neighborhood, :presence => true
end
