class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category_id = params[:category_id]
    
    if @category_id.present? 
      @category = Category.find(@category_id)
    end

    @devices = Device.where("name like '%#{@query}%'").where(category_id: @category_id)
  end
end
