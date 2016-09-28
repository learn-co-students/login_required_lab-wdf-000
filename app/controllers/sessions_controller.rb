require 'pry'
class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry
    if params[:name] != '' && !params[:name].nil?
       session[:name] = params[:name]
    else
      # binding.pry
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name]
       session[:name] = nil
     end
  end

end
