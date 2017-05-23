class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def is_admin?
    current_user.admin?
  end
end
