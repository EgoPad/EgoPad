class TaskContact < ActiveRecord::Base
	belongs_to :contact
	belongs_to :task	
end
