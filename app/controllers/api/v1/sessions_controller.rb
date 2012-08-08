class Api::V1::SessionsController < ApplicationController
  respond_to :json

  def create
    user = login(params[:email], params[:password])
    respond_with user, :only => [:id, :username, :email]
  end
end
