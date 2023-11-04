class SearchController < ApplicationController
  def index
    @query = params[:query]
  
    @devices = Device.where(:name => @query)
  end
end
