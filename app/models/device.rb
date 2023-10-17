class Device < ApplicationRecord
  belongs_to :employee
  belongs_to :category

  def total
    all.count
  end
end
