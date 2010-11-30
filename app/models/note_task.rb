class NoteTask < ActiveRecord::Base
	belongs_to :note
	belongs_to :task
end
