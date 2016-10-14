class SessionsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:destroy]

  def new
    binding.pry
  end

  def show
    binding.pry
  end

  def create
    session[:name] = params[:name]
  end

  def destroy
    if session[:name] != nil
      session.clear
    else
      redirect_to '/show'
    end
  end

  private

  def require_login
    if params[:name] != nil && params[:name] != ""
      current_user=(params[:name])
    end
    redirect_to '/new' unless current_user
  end

end
