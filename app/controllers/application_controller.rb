class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
<<<<<<< HEAD


  protect_from_forgery with: :exception


	helper_method :current_user
  		def current_user
    User.where(id: session["user_id"]).first
  end
=======
  protect_from_forgery with: :exception
>>>>>>> 2335db8cf13bad5c4a249ed117a9ecb5e3d21a8d
end
