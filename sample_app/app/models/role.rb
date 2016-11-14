class Role < ActiveRecord::Base
	before_validation :set_status, on: :create
	
	belongs_to :project
	belongs_to :person
	belongs_to :status

	validates :person_id ,  :presence => true
	validates :project_id , :presence => true
	validates :status_id ,  :presence => true
	validates :title ,      :presence => true

	def set_status
		self.status_id = Status.planning.id if self.status_id.blank?
	end

end
