class Device < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :category
  belongs_to :manufacturer

  def total
    all.count
  end

  def label
    "#{name} (#{manufacturer.name}/#{category.name})"    
  end
end
