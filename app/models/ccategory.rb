class Ccategory < ActiveRecord::Base
  attr_accessible :title
  has_many :contacts
end
