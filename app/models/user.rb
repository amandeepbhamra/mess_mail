class User < ActiveRecord::Base
	
	devise 	:database_authenticatable, :registerable,
	    	:recoverable, :rememberable, :trackable, :validatable

	has_many :contacts

	attr_accessible :name, :username, :email, :password, :password_confirmation, :remember_me
	

end
