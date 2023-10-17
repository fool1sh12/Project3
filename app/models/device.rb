class Device < ApplicationRecord
  belongs_to :employee
  belongs_to :categories

  def total
    all.count
  end
end
