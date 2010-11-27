class Task < ActiveRecord::Base
  attr_accessible :title, :time_limit, :description, :active, :taskscategory_id
end
