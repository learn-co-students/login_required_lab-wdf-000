class SecretsController < ApplicationController


  def show
    redirect_to new_session_path unless session.include? :name
  end

end