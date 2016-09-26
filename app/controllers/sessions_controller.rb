class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]
  # skip_before_action :require_login, only: [:new, :create]

  def new
    render :'public/login'
  end

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to index_path
    end
  end

  def destroy
    session[:name] = nil unless session[:name].nil?
    redirect_to login_path
  end

  private

  def require_login
    redirect_to login_path if session[:name].blank?
  end
end