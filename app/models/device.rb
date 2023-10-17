class Device < ApplicationRecord
  belongs_to :employee
  belongs_to :category
end
