# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_hashes =     [{name: "Ryan Francis", source_url: "http://portal.starterleague.com/media/W1siZiIsIjIwMTMvMDMvMzEvMTQvNDgvMTMvNjI0LzM3MDU0Nl83NzI1Nzg1XzEzNjU1MzI5NDZfbi5qcGciXSxbInAiLCJ0aHVtYiIsIjIwMHgyMDAjIl1d/370546_7725785_1365532946_n.jpg", tsl_class: "Web Dev - AM", email: "ryan.p.francis@gmail.com", phone: 9376208910, twitter: "ryan_p_francis"},
                   {name: "Claire Lew", source_url: "http://portal.starterleague.com/media/W1siZiIsIjIwMTMvMDQvMDEvMTcvMDYvMTYvODg3L2NsYWlyZV9sZXcuanBnIl0sWyJwIiwidGh1bWIiLCIyMDB4MjAwIyJdXQ/claire-lew.jpg", tsl_class: "Web Dev - AM", email: "clew23@gmail.com", phone: 6125789342, twitter: "cjlew23"},
                   {name: "Will Crouse", source_url: "http://portal.starterleague.com/media/W1siZiIsIjIwMTMvMDQvMDEvMTcvMDkvNTIvMzcxL3dpbGxpYW1fY3JvdXNlLmpwZyJdLFsicCIsInRodW1iIiwiMjAweDIwMCMiXV0/william-crouse.jpg", tsl_class: "Web Dev - AM", email: "wcrouse72788@gmail.com", phone: 3364801268}]

location_hashes = [{name: "1871 - Design Room", neighborhood: "River North", street: "222 W Merchandise Mart Plaza #1212", city: "Chicago", state: "IL"},
                   {name: "1871 - Dev Room", neighborhood: "River North", street: "222 W Merchandise Mart Plaza #1212", city: "Chicago", state: "IL"},
                   {name: "1871 - Common Area", neighborhood: "River North", street: "222 W Merchandise Mart Plaza #1212", city: "Chicago", state: "IL"}]

post_hashes =    [{status: "Coding", duration: "3 hours", description: "Reworking what we did in class"},
                   {status: "Hanging Out", duration: "4 hours", description: "Adding bootstrap to my app"},
                   {status: "Coding", duration: "2 hours", description: "Lookin for someone to pair-program with - by coffee shop"}]

User.destroy_all
user_hashes.each do |user|
  u = User.new
  u.name = user[:name]
  u.source_url = user[:source_url]
  u.tsl_class = user[:tsl_class]
  u.email = user[:email]
  u.phone = user[:phone]
  u.twitter = user[:twitter]
  u.save
end

Location.destroy_all
location_hashes.each do |location|
  l = Location.new
  l.name = location[:name]
  l.neighborhood = location[:neighborhood]
  l.street = location[:street]
  l.city = location[:city]
  l.state = location[:state]
  l.save
end

Post.destroy_all
i=0
post_hashes.each do |post|
  p = Post.new
  p.user_id = User.first.id + i
  p.location_id = Location.first.id + i
  p.duration = post[:duration]
  p.description = post[:description]
  p.save
  i += 1
end
