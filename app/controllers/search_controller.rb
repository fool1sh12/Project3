class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category_id = params[:category_id]
    
    @devices = Device.where("name like '%#{@query}%'")

    if @category_id.present? 
      @devices = @devices.where(category_id: @category_id)
    end
  end
end
