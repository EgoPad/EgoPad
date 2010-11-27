class Notes < ActiveRecord::Base
  attr_accessible :title, :URL, :content, :sharable, :notescategory_id
end
