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

5.times do |index|
  Employee.create(
    :first_name => "Employee #{index}"
  )
end

