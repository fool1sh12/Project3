class Software < ApplicationRecord
  has_and_belongs_to_many :employees

  def compliant?
    employees.uniq.count <= license_count.to_i
  end
end
