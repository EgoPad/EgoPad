class Tcategory < ActiveRecord::Base
  attr_accessible :title
  has_many :tasks
end
