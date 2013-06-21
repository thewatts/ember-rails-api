=begin
  Take note that we are inheriting ApplicationController but in a RailsAPI app ApplicationController itself inherits from ActionController::API instead of ActionController::Base.
=end

class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.new(params[:user])

    if user.save
      render json: user
    else
      render json: user, status: 422
    end
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(params[:user])
      render json: user
    else
      render json: user, status: 422
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render json: user, status: 204
    else
      render json: user
    end
  end
end