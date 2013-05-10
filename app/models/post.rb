class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :location

  validates :description, :presence => true
end
