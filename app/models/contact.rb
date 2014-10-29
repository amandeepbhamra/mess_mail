class Contact < ActiveRecord::Base
	
	belongs_to :user  	

  	attr_accessible :email, :name, :organization, :user_id

end
