class SessionsController < ApplicationController
  # before_action :require_name

  def create
    session[:name] = params[:name]
    return redirect_to :new if session[:name] == nil || session[:name].empty?
    redirect_to :show
  end

  def destroy
    if session[:name] != nil
      session[:name] = nil
    end
    redirect_to :new
  end

end
