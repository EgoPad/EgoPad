class Contact < ActiveRecord::Base
  attr_accessible :FIO, :adress, :phone, :e_mail, :web_page, :contactscategory_id
end
