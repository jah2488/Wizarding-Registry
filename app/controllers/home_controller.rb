class HomeController < ApplicationController

  def index
  	@user = User.new
  end

  def about
  	@users ||= User.all.count
  end

  def contact
  end

end
