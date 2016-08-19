User.destroy_all

User.create([
  {
  email: "switt@switt.swi",
  first_name: "Switt",
  last_name: "Sweet",
  password_digest: "123456789"
  },
  {
  email: "paolo@paolo.com",
  first_name: "Paolo",
  last_name: "Grinder",
  password_digest: "0987654321"
  },
  {
  email: "james@fearlessleader.com",
  first_name: "James",
  last_name: "Fearlessleader",
  password_digest: "123"
  }
])

p User.count
