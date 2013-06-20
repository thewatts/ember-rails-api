=begin
  Note that we are inheriting from ActionController::Base this time and not ApplicationController. This is so that the controller actions can respond to non JSON requests.
=end
class EmberController < ActionController::Base; end