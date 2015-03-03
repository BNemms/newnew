<<<<<<< HEAD
#class UsersController < ApplicationController
  #def index
  #end
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(params.require(:user).permit(:first_name, :email, :password)) 
    if user.save
      redirect_to new_session_path(user_created: 'true') 
    end
  end

  def show
    @user = User.find(session['user_id'])
  end
end


=======
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
>>>>>>> 2335db8cf13bad5c4a249ed117a9ecb5e3d21a8d
