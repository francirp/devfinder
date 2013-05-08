class User < ActiveRecord::Base
  has_many :posts

  validates :source_url, :name, :tsl_class, :email, :twitter, :presence => true

end
