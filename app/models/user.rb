class User < ActiveRecord::Base
  has_many :contact_connections
  has_many :contacts, :through => :contact_connections
end
