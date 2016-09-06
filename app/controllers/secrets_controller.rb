class SecretsController < ApplicationController
  def show
    redirect_to login_path unless session.include? :name
  end
end
