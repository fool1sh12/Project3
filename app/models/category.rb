class Category < ApplicationRecord
  has_many :categories, through: :devices
end
