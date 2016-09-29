class SessionsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.



  def create
    # binding.pry

    if session[:name].nil? && (params[:name].nil? || params[:name].empty?)
      # redirect_to :new_session
      # ^^^ only available with resources sessions in routes
      redirect_to '/login'

    else
        session[:name] = params[:name]
    end
  end

  def destroy
    if !session[:name].nil?
      session[:name].clear
      session.clear
    end
  end

end
