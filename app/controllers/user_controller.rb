class UserController < ApplicationController
  def profile

  	begin
  	  @me = User.find(params[:id])
  	rescue
  	  raise ActionController::RoutingError.new('Not Found')
  	end





  end
end
