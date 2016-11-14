# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
{ :title => 'Planning',     :position => '1'},
{ :title => 'Implementing', :position => '2'},
{ :title => 'Completed',    :position => '3'},
{ :title => 'Maintaining',  :position => '4'},
].each do |attributes|
	Status.where(attributes).first_or_create!
end
puts('I am working')