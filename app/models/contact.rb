class Contact < ActiveRecord::Base
  attr_accessible :FIO, :adress, :phone, :e_mail, :web_page, :ccategory_id
  belongs_to :ccategory
  has_many :task_contacts
end
