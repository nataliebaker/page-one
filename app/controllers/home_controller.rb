class HomeController < ApplicationController
  def index
  	@me = User.find(2)
  end
end
