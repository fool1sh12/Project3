class Employee < ApplicationRecord
  has_one_attached :profile_picture
  has_many :devices
  has_many :categories, through: :devices
  has_and_belongs_to_many :softwares
  
  def to_label
    "#{first_name} #{last_name}"
  end
end
