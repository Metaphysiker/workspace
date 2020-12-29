class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :is_user_allowed?, except: [:login]

  def is_user_allowed?
    unless current_user.nil?
      unless current_user.role == "admin"
        #raise "Unauthorized User"
        sign_out current_user
        flash[:notice] = "Sie sind nicht authorisiert!"
        redirect_to new_user_session_path
      end
    end
  end

end
