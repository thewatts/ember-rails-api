=begin
  Take note that we are inheriting ApplicationController but in a RailsAPI app ApplicationController itself inherits from ActionController::API instead of ActionController::Base.
=end

class UsersController < ApplicationController

  def index
    render json: User.all
  end

end