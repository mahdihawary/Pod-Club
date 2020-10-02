class ApplicationController < ActionController::Base
    before_action :authorized
    before_action :logged_in?
    
    def set_current_user
        @current_user = User.find_by(id: session[:user])
    end
    
    def logged_in?
        !!set_current_user
    end
        
    def authorized
        flash[:redirect] = "Please Signup or login to access this feature"
        redirect_to new_user_path unless logged_in?
    end
end
