class ApplicationController < ActionController::Base

  def current_account
    current_user.account
  end
  helper_method :current_account

end
