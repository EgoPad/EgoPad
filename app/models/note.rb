class Note < ActiveRecord::Base
  attr_accessible :title, :url, :content, :sharable, :ncategory_id, :tag_list, :tags
  acts_as_taggable
  belongs_to :ncategory
  has_many :note_tasks
  has_many :tasks, :through => :note_tasks
end