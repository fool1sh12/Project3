class Employee < ApplicationRecord
  has_one_attached :profile_picture
  has_many :devices

  def to_label
    "#{first_name} #{last_name}"
  end
end
