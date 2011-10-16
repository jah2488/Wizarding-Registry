class SearchController < ApplicationController
  def index
	@search = User.search(params[:search])
	@user = @search.first
	if @user == []
  		redirect_to :back, :notice => "Wizard not Found"
  	else 
  		redirect_to @user
  	end
  end

end
