class UsersController < ApplicationController
	
	before_filter :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
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
		@user = User.new
		respond_to do |format|
			format.html
		end
	end

	def edit
	end

	def create
		@user = User.new(params[:user])
		@user.save
		respond_to do |format|
			format.html
		end
	end

	def update
		@user.update_attributes(params[:user])
		respond_to do |format|
			format.html
		end
	end

	def destroy
		@user.destroy
		respond_to do |format|
			format.html
		end
	end

	private
		def set_user
			@user = User.find(params[:id])
		end
end
