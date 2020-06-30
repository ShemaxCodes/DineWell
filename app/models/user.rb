  
class User < ActiveRecord::Base
  has_many :meals #or posts?
  has_secure_password 
  validates_presence_of :email, :username, :password

  
     
end 