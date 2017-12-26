class Action < ActiveRecord::Base
	belongs_to :citizen

	# def slug
	# 	self.name.downcase
	# 	# gsub(" ", "-")
	# end 

	# def self.find_by_slug(slug)
 #    	Action.all.find{|action| action.slug == slug}
 #  	end
end
