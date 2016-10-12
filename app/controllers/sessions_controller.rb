class SessionsController < ApplicationController



  def new
  end

  def create
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
        render 'create'
    else
        redirect_to new_session_path
    end
  end


  def destroy
    if session[:name]
      session[:name] = nil
    end
  end







end
