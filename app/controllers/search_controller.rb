class SearchController < ApplicationController
  def index
	@search = User.search { fulltext params[:search] }
	@user   = @search.results
	if @user == []
  		redirect_to :back, :notice => "Wizard not Found"
  	else 
  		redirect_to @user
  	end
  end

end
