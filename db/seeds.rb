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
Category.all.each do |category|
  Manufacturer.all.each do |manufacturer|
    3.times do |i|
      num = rand(1..100)
      Device.create(
        {:name => "Device #{num}",
        :category_id => category.id,
        :manufacturer_id => manufacturer.id}
      )
    end
  end
end  

#Device Creation and Assigning
#1.upto(3) do |i|
 # 1.upto(3) do |j|
  #  1.upto(3) do |k|
   #   num = rand(1..100)
    #  Device.create(
     #   {:name => "Device #{num}",
      #  :category_id => i,
       # :manufacturer_id => j}
     # )
   # end
 # end
#end  
 
Employee.all.each do |employee|
  3.times do
    employee.devices << Device.all.sample
  end
end

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

