# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


category_hash = [
  {
    :name => "Smart Phone"
  },
  {
    :name => "Laptop"
  },
  {
    :name => "Desktop"
  }
]

Category.create(category_hash)

manufact_hash = [
  {
    :name => "Apple",
    :website => "https://www.apple.com"
  },
  {
    :name => "Lenovo",
    :website => "https://www.lenovo.com"
  },
  {
    :name => "Dell",
    :website => "https://www.dell.com"
  }
]

Manufacturer.create(manufact_hash)

1.upto(5) do |index|
  Employee.create(
    :first_name => "Employee #{index}"
  )
end

1.upto(5) do |index|
  Device.create(
    {:name => "Smart Phone #{index}",
    :employee_id => index,
    :category_id => 1,
    :manufacturer_id => 1 }
  )
end

1.upto(5) do |index|
  Device.create(
    {:name => "Laptop #{index}",
    :employee_id => index,
    :category_id => 2,
    :manufacturer_id => 2 }
  )
end

1.upto(5) do |index|
  software_num = rand(5) + 1
  license_num = rand(5)
  Software.create(
    {:name => "Software #{software_num}",
    :license_count => license_num }
  )
end 

