
class Citizen < ActiveRecord::Base
  has_many :actions
  validates_presence_of :username, :email, :password
  has_secure_password

    def slug
		self.username.downcase.gsub(" ", "-")
	end

    def self.find_by_slug(slug)
			User.all.find {|user| user.slug == slug}
	end

end