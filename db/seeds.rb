# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

talents = Talent.create([{:name=>"acrobat"}, {:name=> "contortionist"}, {:name=>"clown"}, {:name=>"juggler"}, {:name=>"freak"}])
amoebas = Amoeba.create([{:name=>"Buzz", :generation=>1}, {:name=>"Kwilly", :generation=>1}, {:name=>"Willy", :generation=>1}])
acts = Act.create([{:name=>"Freaky Friday",:datetime => Time.now + 60 * 60 * 24}, {:name=>"Ssssspecials Saturday",:datetime =>Time.now + (60 * 60 * 24) * 2 }, {:name=>"Ssssshhh Sunday",:datetime =>Time.now + (60 * 60 * 24) * 3}, {:name=>"Mellow Monday",:datetime =>Time.now + (60 * 60 * 24) * 4}, {:name=>"Terrible Tuesday",:datetime =>Time.now + (60 * 60 * 24) * 5}])

Amoeba.all.each do |a|
	a.talent_id = rand(0..Talent.all.length-1)
	a.act_id = rand(0..Act.all.length-1)
	a.save
end