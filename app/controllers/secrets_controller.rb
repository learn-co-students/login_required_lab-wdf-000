class SecretsController < ApplicationController
  before_action :require_login

  def index
    render :'private/index'
  end

  def show
    render :'private/show'
  end

  private

  def require_login
    redirect_to login_path if session[:name].blank?
  end
end