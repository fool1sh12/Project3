class Search
  
  def initialize(query, options = {})
    @query = query
    @category_id = options[:category_id]
    @manufacturer_id = options[:manufacturer_id]
  end

  def results
    devices = Device.where("name like '%#{@query}%'")
    
    if  @category_id.present? && @manufacturer_id.present?
      devices_with_cat = devices.where(category_id: @category_id)
      devices = devices_with_cat.where(manufacturer_id: @manufacturer_id)
    else
      devices
    end
    
    if @category_id.present? 
      devices = devices.where(category_id: @category_id)
    else
      devices
    end
    
    if @manufacturer_id.present?
      devices = devices.where(manufacturer_id: @manufacturer_id)
    else
      devices
    end

  end

end

