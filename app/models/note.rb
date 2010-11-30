class Note < ActiveRecord::Base
  attr_accessible :title, :url, :content, :sharable, :notescategory_id
end
