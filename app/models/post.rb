class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :location

  validate :description, :presence => true
end
