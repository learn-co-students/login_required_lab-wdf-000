class SessionsController < ApplicationController
  def new
  end

  def create
    # byebugexit

    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to secret_path
    else
      redirect_to login_path
    end
  end

  def destroy
    if current_user
      session[:name] = nil
    end
    redirect_to login_path
  end
end