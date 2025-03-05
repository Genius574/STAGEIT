# Destroy existing items
User.destroy_all
Item.destroy_all
# Count existing items before seeding
existing_count = Item.count
# Create 10 items (5 for each category)
users = [
  { email: "genius@gmail.com", password: "password" },
  { email: "siza@gmail.com", password: "password" }
]

users.each do |user|
  User.create!(user)
end

items = [
  { name: "Stage Setup", category: "event_set_up", description: "Complete stage setup for events", price: 5000, user_id: User.sample.id },
  { name: "Wedding Decorations", category: "event_set_up", description: "Beautiful decorations for weddings", price: 3000, user_id: User.sample.id },
  { name: "Corporate Event Setup", category: "event_set_up", description: "Professional setup for corporate functions", price: 7000, user_id: User.sample.id },
  { name: "Birthday Party Setup", category: "event_set_up", description: "All-in-one birthday party decoration", price: 2500, user_id: User.sample.id },
  { name: "Outdoor Festival Setup", category: "event_set_up", description: "Complete festival arrangements and setup", price: 10000, user_id: User.sample.id },
  { name: "Basic Sound System", category: "sound_system", description: "Speakers and microphone setup", price: 1500, user_id: User.sample.id },
  { name: "Concert Sound System", category: "sound_system", description: "High-quality sound system for concerts", price: 12000, user_id: User.sample.id },
  { name: "DJ Sound System", category: "sound_system", description: "Complete DJ setup with turntables", price: 5000, user_id: User.sample.id },
  { name: "Conference Sound System", category: "sound_system", description: "Microphones and speakers for conferences", price: 3500, user_id: User.sample.id },
  { name: "Home Party Sound System", category: "sound_system", description: "Compact sound system for home parties", price: 2000, user_id: User.sample.id }
]
# Create items in the database
items.each do |item|
  Item.create!(item)
end
# Output message
puts "#{Item.count - existing_count} new items created."
