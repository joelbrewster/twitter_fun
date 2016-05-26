# ActiveRecord::Base.connection.tables.each do |table|
#   result = ActiveRecord::Base.connection.execute("SELECT id FROM #{table} ORDER BY id DESC LIMIT 1") rescue ( puts "Warning: not procesing table #{table}. Id is missing?" ; next )
#   ai_val = result.any? ? result.first['id'].to_i + 1 : 1
#   puts "Resetting auto increment ID for #{table} to #{ai_val}"
#   ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH #{ai_val}")
# end

# Generate users
require 'bcrypt'

Post.delete_all
User.delete_all

@password = BCrypt::Password.create("password123", :cost => 13)

users = User.create([{name: 'Brad', email: 'brad@example.com', password_digest: @password, profile_pic: 'https://media.licdn.com/media/AAEAAQAAAAAAAATyAAAAJDY5NzA4MjhiLWIwMjktNDIzMy05NmVjLWIwZjQ5OTA3MTZlOQ.jpg'},
  {name: 'Luke', email: 'luke@example.com', password_digest: @password, profile_pic: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAbUAAAAJGU3MWRkNzExLWQxNjctNDI0OC04MTNhLTAwNDc2MmRkOTMwYw.jpg'},
  {name: 'Will', email: 'will@example.com', password_digest: @password, profile_pic: 'https://media.licdn.com/media/p/8/005/065/277/3e4db4c.jpg'},
  {name: 'Tom', email: 'tom@example.com', password_digest: @password, profile_pic: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAQXAAAAJDYwYzRlYzkzLWEzZDUtNGU1Ny05NzNlLTIxMjQzZmNiZDliMg.jpg'},
  {name: 'Jason', email: 'jason@example.com', password_digest: @password, profile_pic: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAZ9AAAAJDU2ZTEwNmMwLWM4OWYtNGM4MC05ZTRjLTNiMzQ3MWE0YTdjZg.jpg'},
  {name: 'Stephen', email: 'stephen@example.com', password_digest: @password, profile_pic: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAbsAAAAJDY1MDg2ZDIxLTgyNDYtNDE5OC1hMTY0LWZmZTcyZTJhYzM2NA.jpg'},
  {name: 'Niall', email: 'niall@example.com', password_digest: @password, profile_pic: 'https://p1.zmtcdn.com/image/data/user_profile_pictures/128/0bba5982cf1349c749f7e671f1c6e128_400_thumb.jpg'},
  {name: 'Ephrem', email: 'ephrem@example.com', password_digest: @password, profile_pic: 'https://lh3.googleusercontent.com/-WqY_An4X2oo/AAAAAAAAAAI/AAAAAAAAAAA/xU_SKP3M8SI/photo.jpg'},
  {name: 'Yogi', email: 'yogi@example.com', password_digest: @password, profile_pic: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/066/2af/3b4e0f6.jpg'},
  {name: 'Peter', email: 'peter@example.com', password_digest: @password, profile_pic: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/000/22c/1f8/1b04b9f.jpg'},
  {name: 'Yang', email: 'yang@example.com', password_digest: @password, profile_pic: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/3/000/1af/12b/3046091.jpg'},
  {name: 'Mark', email: 'mark@example.com', password_digest: @password, profile_pic: 'http://www.mixtapetorrent.com/system/files/goldenchild7.jpg'}
  ])


# Generate posts
Post.create([{content: 'superimposed jaundice stabled harpsichord', user: users[rand(0..11)]},
{content: 'inborn fullness circumcising fleece', user: users[rand(0..11)]},
{content: 'dismantled habitat picket eccentricity', user: users[rand(0..11)]},
{content: 'pacifying patriot scribbling mayonnaise', user: users[rand(0..11)]},
{content: 'stoned bead serenaded idling', user: users[rand(0..11)]},
{content: 'swooning surfing displeased sledgehammer', user: users[rand(0..11)]},
{content: 'inoperative toucan caged squint', user: users[rand(0..11)]},
{content: 'penciled trawler repatriate puma', user: users[rand(0..11)]},
{content: 'fanned minstrel extradite filleting', user: users[rand(0..11)]},
{content: 'cursed jogger indoctrinated myogenicity', user: users[rand(0..11)]},
{content: 'fatty liveliness ridiculed unlevelness', user: users[rand(0..11)]},
{content: 'sanded privy inaugurated dispersedye', user: users[rand(0..11)]},
{content: 'savoriest yew sicking colocasia', user: users[rand(0..11)]},
{content: 'insoluble lieu ornament collectability', user: users[rand(0..11)]},
{content: 'clanging maple subjugate elli', user: users[rand(0..11)]},
{content: 'astonishing stopper impound vilnius', user: users[rand(0..11)]},
{content: 'guiltless ballooning entrust ghibellinism', user: users[rand(0..11)]},
{content: 'fugitive villainy desecrated acoasm', user: users[rand(0..11)]},
{content: 'auxiliary smuggler tangle nonaccommodatingness', user: users[rand(0..11)]},
{content: 'mammalian sharper scuttling cyanoplatinite', user: users[rand(0..11)]},
])
