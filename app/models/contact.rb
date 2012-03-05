class Contact < ActiveRecord::Base
  has_many :contact_connections
  has_many :users, :through => :contacts
end
