USERS = [
{
  first_name: "David",
  last_name: "Kim",
  email: "davidkim@switt.com",
  password_digest:  "$2a$10$IhBFOpRHZSsP/BFLWC.Ic.9CHwvh/tyVne7DrcPTKxH6OUqGfRcM2"
},
{
  first_name: "Sophia",
  last_name: "Nakpil",
  email: "sophianakpil@switt.com",
  password_digest:  "$2a$10$WnUKsCQcEAfqhHyfqLVovOaYt2glbp4xw0eLbjvixRxUxyYXKbvB."
},
{
  first_name: "Paolo",
  last_name: "Sese",
  email: "paolosese@switt.com",
  password_digest:  "$2a$10$u4ZLO23FqTKffhxJN6D25..X1EEDigUMAy/J23CGl1MaAwqEXB38y"
},
{
  first_name: "James",
  last_name: "de la Cruz",
  email: "jamesdelacruz@switt.com",
  password_digest:  "$2a$10$4IP3UySsfUR36oAZ1/UT/OVae7swOJkIfyHEIeFMxRvywizOP.yLm"
}
]

CITIES = [
  {
  name: "San Francisco Bay Area",
  description: "Cold always at 60 degrees",
  picture: "http://i.imgur.com/OvvajVa.jpg",
  city_website: "http://sfgov.org/"
  },
  {
  name: "Seattle",
  description: "Rainy",
  picture: "http://i.imgur.com/UGRsaYM.jpg",
  city_website: "http://www.seattle.gov/"
  },
  {
  name: "New Orleans",
  description: "Mardi Gras",
  picture: "http://i.imgur.com/bQetaqC.jpg",
  city_website: "http://www.neworleansonline.com/"
  },
  {
  name: "Arecibo, Puerto Rico",
  description: "Arecibo is the largest city in geographical size on the island.",
  picture: "http://i.imgur.com/AQn2yPj.jpg",
  city_website: "http://welcome.topuertorico.org/city/arecibo.shtml"
  }
]

POSTS = [
  {
  user_id: 1,
  city_id: 1,
  title: "Marin Headlands, Graffiti bunkers",
  content: "Described as the Holy Grail for local urban explorers"
  },
  {
  user_id: 2,
  city_id: 2,
  title: "Lava House",
  content: "Built by Jerry Ganz (the fabulously wealthy man responsible for the mass production of seat-belts) in the 1970s, the Lava House's chief architectural pull was its extensive use of imported lava rock. Construction stopped suddenly shortly after construction began, and it has remained empty to this day."
  },
  {
  user_id: 3,
  city_id: 3,
  title: "Gray Whale Cove, Pacifica",
  content: "The beach (a.k.a. Devil's Slide) features a sheltered cove surrounded by cliffs that drop abruptly into the Pacific Ocean. A steep trail leads down to the beach. There is a small picnic area on the bluff above.  Gray whales can often be seen close to the shore."
  },
  {
  user_id: 4,
  city_id: 4,
  title: "Cueva del Indio, Arecibo, Puerto Rico",
  content: "View Petroglyphs at Cueva del Indio in Arecibo"
  }
]

User.create(USERS)
City.create(CITIES)
Post.create(POSTS)
