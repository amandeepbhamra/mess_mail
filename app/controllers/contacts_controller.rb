class ContactsController < ApplicationController
	before_filter :set_contact, only: [:show, :edit, :update, :destroy]

	def index
		@contacts = current_user.contacts.order(:name)
		respond_to do |format|
			format.html
		end
	end

	def show
		respond_to do |format|
			format.html
		end
	end

	def new
		@contact = Contact.new
		respond_to do |format|
			format.html
		end
	end

	def edit
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.save
		respond_to do |format|
			format.html { redirect_to contact_path(@contact), notice: "New Contact has been added successfully !!" }
		end
	end

	def update
		@contact.update_attributes(params[:contact])
		respond_to do |format|
			format.html
		end
	end

	def destroy
		@contact.destroy
		respond_to do |format|
			format.html { redirect_to contacts_path, notice: "Contact removed successfully !!" }
		end
	end

	private
		def set_contact
			@contact = Contact.find(params[:id])
		end
end
