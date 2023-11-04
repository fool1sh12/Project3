class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category_id = params[:category_id]
    @manufacturer_id = params[:manufacturer_id]
    
    @devices = Device.where("name like '%#{@query}%'")

    if @category_id.present? 
      @devices = @devices.where(category_id: @category_id)
    end

    if @manufacturer_id.present?
      @devices = @devices.where(manufacturer_id: @manufacturer_id)
    end

    if @category_id.present? && @manufacturer_id.present?
      @devices_with_cat = @devices.where(category_id: @category_id)
      @devices = @devices_with_cat.where(manufacturer_id: @manufacturer_id)
    end
  end
end
