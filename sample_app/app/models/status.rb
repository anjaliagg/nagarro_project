class Status < ActiveRecord::Base
	# validates :title ,    :presence => true
	# validates :position , :presence => true
	#^^not even needed cz wont be creating any new status records
	class << self
		def planning
			self.find_by_title("Planning")
		end	
    end
end
