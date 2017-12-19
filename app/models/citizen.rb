
class Citizen < ActiveRecord::Base
  has_many :actions
  validates_presence_of :username, :email, :password
  has_secure_password

    def slug
		self.username.downcase.gsub(" ", "-")
	end

    def self.find_by_slug(slug)
		Citizen.all.find {|c| c.slug == slug}
	end

end