class SecretsController < ApplicationController
  before_action :current_user

  def show
    # byebug
    if current_user == nil
      redirect_to new_session_path
    end
  end

end
