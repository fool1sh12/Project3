# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Category Creation
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

#Manufacturer Creation
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

#Employee Creation
1.upto(5) do |index|
  Employee.create(
    :first_name => "Employee #{index}"
  )
end

#Device Creation and Assigning
1.upto(3) do |index|
  Device.create(
    {:name => "Device #{index}",
    :category_id => 1,
    :manufacturer_id => 1 }
  )
end

#1.upto(5) do |index|
 # Device.create(
  #  {:name => "Laptop #{index}",
   #:employee_id => index,
   #:category_id => 2,
   #:manufacturer_id => 2 }
 # )
#end

#Random Software Creation
1.upto(5) do |index|
  license_num = rand(5)
  Software.create(
    {:name => "Software #{index}",
    :license_count => license_num }
  )
end 

#Random Software Assigning -- Three Times
3.times do
  Employee.all.each do |employee|
    employee.softwares << Software.find(rand(1..5))
  end
end

