class Device < ApplicationRecord
  belongs_to :employee
  belongs_to :category
  belongs_to :manufacturer

  def total
    all.count
  end
end
