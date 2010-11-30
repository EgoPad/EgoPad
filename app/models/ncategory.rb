class Ncategory < ActiveRecord::Base
  attr_accessible :title
  has_many :notes
end
