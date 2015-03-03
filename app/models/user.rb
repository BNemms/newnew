<<<<<<< HEAD
require 'bcrypt'
class User < ActiveRecord::Base
  has_secure_password 
=======
class User < ActiveRecord::Base
	attr_accessor :password
	before_save :encrypt_password

	validates_confirmation_of :password
	validates_presence_of :password, :on => :create
	validates_presence_of :email
	validates_uniqueness_of :email

	def encrypt_password
		if password.present
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
end
end
>>>>>>> 2335db8cf13bad5c4a249ed117a9ecb5e3d21a8d
end