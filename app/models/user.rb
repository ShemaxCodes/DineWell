  
class User < ActiveRecord::Base
  has_secure_password 
  has_many :meals 

  validates_presence_of :email, :username #:password_digest

  
     
end 