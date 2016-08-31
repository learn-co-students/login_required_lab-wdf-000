class SessionsController < ApplicationController

	def show
	end

	def new
	end

	def create
	    if params[:name] && params[:name] != ""
			session[:name] = params[:name]
			redirect_to show_path
		else
			redirect_to '/new'
		end
	end

	def destroy
		if session[:name]
			session.clear
		end
		redirect_to '/new'
	end

end
