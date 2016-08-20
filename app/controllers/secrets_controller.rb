class SecretsController < ApplicationController
  def show
    redirect_to '/new' and return unless session.include?(:name)
    render '/show'
  end
end
