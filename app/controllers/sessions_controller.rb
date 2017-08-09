class SessionsController < ApplicationController
  before_action :require_login

  def new
  end

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'sessions', action: 'new'
  end

  def destroy
    session.delete :name
  end


end
