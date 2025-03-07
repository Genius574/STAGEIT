require 'open-uri'

# Destroy existing records to ensure the seed is idempotent
Booking.destroy_all
Item.destroy_all
User.destroy_all

puts ":star2: Seeding Users..."

# User photos (using URLs)
alice_photo_url = "https://randomuser.me/api/portraits/women/1.jpg"
bob_photo_url = "https://randomuser.me/api/portraits/men/1.jpg"
carol_photo_url = "https://randomuser.me/api/portraits/women/2.jpg"
dave_photo_url = "https://randomuser.me/api/portraits/men/2.jpg"

# Creating Users
alice = User.create!(
  first_name: "Alice",
  last_name: "Johnson",
  email: "alice.johnson@example.com",
  password: "securepassword1"
)
alice.photo.attach(io: URI.open(alice_photo_url), filename: 'alice_johnson.jpg')
puts ":woman: #{alice.first_name} #{alice.last_name} has been created with an image."

bob = User.create!(
  first_name: "Bob",
  last_name: "Smith",
  email: "bob.smith@example.com",
  password: "securepassword2"
)
bob.photo.attach(io: URI.open(bob_photo_url), filename: 'bob_smith.jpg')
puts ":man: #{bob.first_name} #{bob.last_name} has been created with an image."

carol = User.create!(
  first_name: "Carol",
  last_name: "Davis",
  email: "carol.davis@example.com",
  password: "securepassword3"
)
carol.photo.attach(io: URI.open(carol_photo_url), filename: 'carol_davis.jpg')
puts ":woman: #{carol.first_name} #{carol.last_name} has been created with an image."

dave = User.create!(
  first_name: "Dave",
  last_name: "Lee",
  email: "dave.lee@example.com",
  password: "securepassword4"
)
dave.photo.attach(io: URI.open(dave_photo_url), filename: 'dave_lee.jpg')
puts ":man: #{dave.first_name} #{dave.last_name} has been created with an image."

puts "\n:shopping_trolley: Seeding items..."

# item photos (using URLs)
stage_light_photo_url = "https://www.terralec.co.uk/Portals/54/product/images/prdad78623e-dceb-4ec3-80a7-52dc7b69bedc.jpg"
speakersystem_photo_url = "https://sbrprosound.co.za/wp-content/uploads/2022/12/Lane-Pro-SP-LS-Passive-Combo-T-1024x887.jpg"
# wireless_photo_url = "https://aragencies.co.za/cdn/shop/products/LR634.jpg?v=1679817572"
stage_photo_url = "https://i.pinimg.com/736x/2d/86/e6/2d86e6fa3f589e03103211bcebb67475.jpg"

# Creating items with categories
stagelightiningpackage = Item.create!(
  name: "Stage Lighting Package",
  description: "A complete stage lighting setup, including spotlights, wash lights, and LED strips to create an
                electrifying
                atmosphere for any performance. Ideal for concerts, live performances, and theatrical productions.",
  price: 1500,
  category: "event_set_up",  # Added category
  user_id: alice.id
)
stagelightiningpackage.photo.attach(io: URI.open(stage_light_photo_url), filename: 'statelighting.png')
puts ":stage lighting: #{stagelightiningpackage.name} is now available, offered by #{alice.first_name}."

speakersystem = Item.create!(
  name: "PA Speaker System",
  description: " A high-powered PA speaker system designed for large venues. Equipped with subwoofers and multiple input
                channels, this system ensures crisp, clear sound projection across the entire venue,
                perfect for live music performances.",
  price: 1000,
  category: "sound_system",  # Added category
  user_id: bob.id
)
speakersystem.photo.attach(io: URI.open(speakersystem_photo_url), filename: 'speakersystem.png')
puts ":speaker system: #{speakersystem.name} is now available, offered by #{bob.first_name}."

# wirelessmicrophoneset = Item.create!(
#   name: "Wireless Microphone Set",
#   description: "A professional-grade wireless microphone set, ideal for performers, hosts, or speakers.
#                 Featuring long-range capability and interference-free signals,
#                 it ensures a seamless performance for all types of musical events.",
#   price: 300,
#   category: "sound_system",  # Added category
#   user_id: carol.id
# )
# wirelessmicrophoneset.photo.attach(io: URI.open(wireless_photo_url), filename: 'WirelessMicrophoneSet.png')
# puts ":Wireless Microphone Set: #{wirelessmicrophoneset.name} is now available, offered by #{carol.first_name}."

stage = Item.create!(
  name: "Portable Stage",
  description:  "A lightweight, easy-to-assemble portable stage perfect for small to medium events.
  This stage provides a stable and safe surface for performers and speakers to showcase their talent.
  Includes stage risers and carpeted surfaces",
  price: 1200,
  category: "event_set_up",  # Added category
  user_id: dave.id
)
stage.photo.attach(io: URI.open(stage_photo_url), filename: 'stage.png')
puts ":stage: #{stage.name} is now available, offered by #{dave.first_name}."

puts "\n:date: Seeding Bookings..."

# Creating Bookings
Booking.create!(
  item_id: stagelightiningpackage.id,
  user_id: bob.id,
  status: 1,
  created_at: Time.now,
  updated_at: Time.now
)
puts ":man: #{bob.first_name} has booked the #{stagelightiningpackage.name} for 2 days. Total Price: $1500."

Booking.create!(
  item_id: speakersystem.id,
  user_id: carol.id,
  status: 0,
  created_at: Time.now,
  updated_at: Time.now
)
puts ":woman: #{carol.first_name} has a pending booking for #{speakersystem.name} for 3 days. Total Price: $1000."

# Booking.create!(
#   item_id: wirelessmicrophoneset.id,
#   user_id: dave.id,
#   status: 1,
#   created_at: Time.now,
#   updated_at: Time.now
# )
# puts ":man: #{dave.first_name} has booked the #{wirelessmicrophoneset.name} for 1 day. Total Price: $300."

puts "\n:date: Seeding complete!"
