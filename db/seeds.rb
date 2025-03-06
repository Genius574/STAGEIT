# Clear existing data
# Booking.delete_all
# Item.delete_all
# User.delete_all

# Create Users (15+)
# users = User.create!([
#   { email: "john.doe@example.com", password: "password", first_name: "John", last_name: "Doe" },
#   { email: "jane.smith@example.com", password: "password", first_name: "Jane", last_name: "Smith" },
#   { email: "siza@gmail.com", password: "password", first_name: "Siza", last_name: "Moyo" },
#   { email: "alice.brown@example.com", password: "password", first_name: "Alice", last_name: "Brown" },
#   { email: "mike.wilson@example.com", password: "password", first_name: "Mike", last_name: "Wilson" },
#   { email: "sarah.davis@example.com", password: "password", first_name: "Sarah", last_name: "Davis" },
#   { email: "peter.parker@example.com", password: "password", first_name: "Peter", last_name: "Parker" },
#   { email: "mary.jane@example.com", password: "password", first_name: "Mary", last_name: "Jane" },
#   { email: "tom.hardy@example.com", password: "password", first_name: "Tom", last_name: "Hardy" },
#   { email: "emma.stone@example.com", password: "password", first_name: "Emma", last_name: "Stone" },
#   { email: "chris.evans@example.com", password: "password", first_name: "Chris", last_name: "Evans" },
#   { email: "lisa.kudrow@example.com", password: "password", first_name: "Lisa", last_name: "Kudrow" },
#   { email: "genius@gmail.com", password: "password", first_name: "Genius", last_name: "User" },
#   { email: "jen.aniston@example.com", password: "password", first_name: "Jen", last_name: "Aniston" },
#   { email: "matt.leblanc@example.com", password: "password", first_name: "Matt", last_name: "LeBlanc" },
#   { email: "courtney.cox@example.com", password: "password", first_name: "Courtney", last_name: "Cox" }
# ])

# Create Items (15+)
# items = Item.create!([
#   { name: "Stage Lighting Rig", category: "event_set_up", description: "LED lighting system for main stage", price: 200, user_id: users[0].id },
#   { name: "Pro Audio Mixer", category: "sound_system", description: "32-channel digital mixing console", price: 150, user_id: users[1].id },
#   { name: "Festival Tent", category: "event_set_up", description: "6-person tent for festival camping", price: 40, user_id: users[2].id },
#   { name: "Portable Generator", category: "event_set_up", description: "5000W silent generator", price: 80, user_id: users[3].id },
#   { name: "DJ Controller", category: "sound_system", description: "Pioneer DDJ-1000 for live sets", price: 120, user_id: users[4].id },
#   { name: "Backline Drum Kit", category: "sound_system", description: "Pearl 5-piece drum set", price: 90, user_id: users[5].id },
#   { name: "LED Video Wall", category: "event_set_up", description: "10x6 ft LED screen for visuals", price: 250, user_id: users[6].id },
#   { name: "Electric Guitar", category: "sound_system", description: "Fender Stratocaster with amp", price: 60, user_id: users[7].id },
#   { name: "PA Speaker System", category: "sound_system", description: "Dual 15-inch powered speakers", price: 100, user_id: users[8].id },
#   { name: "Stage Trussing", category: "event_set_up", description: "20ft aluminum truss section", price: 70, user_id: users[9].id },
#   { name: "Wireless Mic Set", category: "sound_system", description: "Shure 4-channel wireless mics", price: 85, user_id: users[10].id },
#   { name: "Camping Cooler", category: "event_set_up", description: "50qt cooler for festival food", price: 25, user_id: users[11].id },
#   { name: "Turntable Set", category: "sound_system", description: "Technics SL-1200 pair", price: 110, user_id: users[12].id },
#   { name: "Fog Machine", category: "event_set_up", description: "1500W professional fog generator", price: 50, user_id: users[13].id },
#   { name: "Festival VIP Pass", category: "event_set_up", description: "Backstage access for one event", price: 150, user_id: users[14].id },
#   { name: "Bass Amplifier", category: "sound_system", description: "Ampeg 500W bass amp", price: 75, user_id: users[0].id }
# ])

# Create Bookings (15+)
# Booking.create!([
#   { item_id: items[0].id, user_id: users[1].id, date: Date.parse("2025-03-10"), status: 0 },
#   { item_id: items[1].id, user_id: users[2].id, date: Date.parse("2025-03-15"), status: 1 },
#   { item_id: items[2].id, user_id: users[3].id, date: Date.parse("2025-03-20"), status: 2 },
#   { item_id: items[3].id, user_id: users[4].id, date: Date.parse("2025-03-12"), status: 0 },
#   { item_id: items[4].id, user_id: users[5].id, date: Date.parse("2025-03-18"), status: 1 },
#   { item_id: items[5].id, user_id: users[6].id, date: Date.parse("2025-03-25"), status: 2 },
#   { item_id: items[6].id, user_id: users[7].id, date: Date.parse("2025-03-14"), status: 0 },
#   { item_id: items[7].id, user_id: users[8].id, date: Date.parse("2025-03-16"), status: 1 },
#   { item_id: items[8].id, user_id: users[9].id, date: Date.parse("2025-03-22"), status: 2 },
#   { item_id: items[9].id, user_id: users[10].id, date: Date.parse("2025-03-11"), status: 0 },
#   { item_id: items[10].id, user_id: users[11].id, date: Date.parse("2025-03-17"), status: 1 },
#   { item_id: items[11].id, user_id: users[12].id, date: Date.parse("2025-03-23"), status: 2 },
#   { item_id: items[12].id, user_id: users[13].id, date: Date.parse("2025-03-13"), status: 0 },
#   { item_id: items[13].id, user_id: users[14].id, date: Date.parse("2025-03-19"), status: 1 },
#   { item_id: items[14].id, user_id: users[0].id, date: Date.parse("2025-03-24"), status: 2 },
#   { item_id: items[15].id, user_id: users[1].id, date: Date.parse("2025-03-26"), status: 0 }
# ])

# puts "Seed data created successfully!"
# puts "Users: #{User.count}"
# puts "Items: #{Item.count}"
# puts "Bookings: #{Booking.count}"
