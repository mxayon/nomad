USERS = [
  {
  first_name: "bill",
  last_name: "bill",
  email: "bill",
  password_digest: "$2a$10$e5e2X6TRE0vrKs2/95BUUOgWZbohfjVG1Hft.Hos2/UTRy1dF2wrq"
  }
]

CITIES = [
  {
  name: "San Francisco",
  description: "Cold always at 60 degrees",
  picture: "test.jpeg",
  city_website: "www.sf.com"
  }
]

POSTS = [
  {
  user_id: 1,
  city_id: 1,
  title: "SF is soooo KEWLLL",
  content: "I visited SF and ate delicious pizza"
  }
]

User.create(USERS)
City.create(CITIES)
Post.create(POSTS)
