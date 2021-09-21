class ApplicationController < ActionController::Base
    
    helper_method :current_user, :logged_in?

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id] #||= memorizes the query
    end

    def logged_in?
        !!current_user # !! converts the method into a boolean
    end

    def require_user
        if !logged_in?
            flash[:alert] = "You must be logged in to perform that action"
            redirect_to login_path
        end
    end

end
