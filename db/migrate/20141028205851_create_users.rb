class CreateUsers < ActiveRecord::Migration
  	def change
    	create_table :users do |t|
	    	t.string :name
	    	t.string :username
	    	t.integer :category, default: 2

	      	t.timestamps
    	end
  	end
end
