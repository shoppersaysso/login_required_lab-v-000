class SecretsController < ApplicationController
  before_action :require_login

  def show
    if current_user
      render :show
    else
      redirect_to '/secrets/new'
    end
  end


end
