class UsersController < ApplicationController
	def new
		@user = User.new
	new
end

def create
	@user = User.new(param[:user])
	if @user.save
		redirect_to root_url, :notice => "Signed up!"
else
	render "new"
end
end
end