class Note < ActiveRecord::Base
  attr_accessible :title, :url, :content, :sharable, :ncategory_id
  belongs_to :ncategory
  has_many :note_tasks
end