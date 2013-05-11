class User < ActiveRecord::Base
  has_many :posts

  validates :source_url, :name, :email, :presence => true

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.access_token = auth.credentials.token
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = "#{auth.info.first_name} #{auth.info.last_name}"
      user.email = auth.info.email
      user.source_url = auth.info.avatar
    end
  end
end
