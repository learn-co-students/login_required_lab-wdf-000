class SecretsController < ApplicationController
  before_action :require_login

  def index
    @user = current_user
  end

  def show
  end

  def require_login
    redirect_to new_path and return until session.include? :name
  end
end
