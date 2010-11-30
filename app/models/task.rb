class Task < ActiveRecord::Base
  attr_accessible :title, :time_limit, :description, :active, :tcategory_id
  belongs_to :tcategory
  has_many :task_notes
end
