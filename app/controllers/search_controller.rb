class SearchController < ApplicationController
  def index
	@search = User.search(params[:search])
	@user = @search.first
	if @user == [] or @user == nil
  		redirect_to :back, :alert => "Wizard not Found"
  	else 
  		redirect_to @user
  	end
  end

end
