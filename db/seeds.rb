# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
1.upto(10) do |i|
  p = Person.find_or_create_by_id i
  p.name ||= "Person #{i}"
  p.gender ||= ["Male","Female"][rand(2)]
  p.save
end