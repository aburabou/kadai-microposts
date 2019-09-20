class ApplicationController < ActionController::Base
  
  include SessionHelper
  
  private
  
  def require_user_logged_in
    unless ligged_in?
      redirect_to login_url
    end
  end
end
