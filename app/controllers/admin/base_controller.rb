class Admin::BaseController < ApplicationController
  load_and_authorize_resource

  private
    def not_authenticated
      redirect_to new_user_session_path, alert: "Please login first"
    end
end
