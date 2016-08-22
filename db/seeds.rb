USERS = [
{
  first_name: "David",
  last_name: "Kim",
  email: "davidkim@switt.com",
  password_digest:  "$2a$10$IhBFOpRHZSsP/BFLWC.Ic.9CHwvh/tyVne7DrcPTKxH6OUqGfRcM2",
  photo: "http://i.imgur.com/49Iw8sS.jpg",
  location: "Alameda",
  username: "iheartswitt"
},
{
  first_name: "Sophia",
  last_name: "Nakpil",
  email: "sophianakpil@switt.com",
  password_digest:  "$2a$10$WnUKsCQcEAfqhHyfqLVovOaYt2glbp4xw0eLbjvixRxUxyYXKbvB.",
  photo: "http://i.imgur.com/49Iw8sS.jpg",
  location: "The Sunset",
  username: "yungsoph"
},
{
  first_name: "Paolo",
  last_name: "Sese",
  email: "paolosese@switt.com",
  password_digest:  "$2a$10$u4ZLO23FqTKffhxJN6D25..X1EEDigUMAy/J23CGl1MaAwqEXB38y",
  photo: "http://i.imgur.com/49Iw8sS.jpg",
  location: "Hayward",
  username: "gaykidmaadcity"
},
{
  first_name: "James",
  last_name: "de la Cruz",
  email: "jamesdelacruz@switt.com",
  password_digest:  "$2a$10$4IP3UySsfUR36oAZ1/UT/OVae7swOJkIfyHEIeFMxRvywizOP.yLm",
  photo: "http://i.imgur.com/49Iw8sS.jpg",
  location: "The Milly",
  username: "yungdlc"
}
]

CITIES = [
  {
  name: "San Francisco Bay Area",
  description: "Cold always at 60 degrees",
  picture: "http://hdwallpaperbackgrounds.net/wp-content/uploads/2015/07/san-francisco-high-resolution-wallpapers.jpg",
  city_website: "http://sfgov.org/"
  },
  {
  name: "London",
  description: "Has Big Ben",
  picture: "http://tremendouswallpapers.com/wp-content/uploads/2014/12/england-london-01.jpg",
  city_website: "http://www.visitlondon.com/#VAqlQTPbJTuE33ER.97"
  },
  {
  name: "New Orleans",
  description: "Mardi Gras",
  picture: "http://cdn.history.com/sites/2/2013/12/New-Orleans-Bourbon-St-H.jpeg",
  city_website: "http://www.neworleansonline.com/"
  },
  {
  name: "Gibraltar",
  description: "Giant Rock with tons of history",
  picture: "https://www.azamaraclubcruises.com/sites/default/files/heros/gibraltar-united-kingdom.jpg",
  city_website: "http://www.visitgibraltar.gi/"
  },
  {
  name: "Arecibo, Puerto Rico",
  description: "Arecibo is the largest city in geographical size on the island.",
  picture: "http://fullhdwall.com/wp-content/uploads/2016/06/Wonderful-Puerto-Rico.jpeg",
  city_website: "http://welcome.topuertorico.org/city/arecibo.shtml"
  }
]

POSTS = [
  {
  user_id: 1,
  city_id: 1,
  title: "Marin Headlands, Graffiti bunkers",
  content: "Described as the Holy Grail for local urban explorers",
  picture: "http://images.fineartamerica.com/images-medium-large-5/graffiti-by-the-golden-gate-bridge-sarit-sotangkur.jpg"
  },
  {
  user_id: 2,
  city_id: 2,
  title: "Lava House",
  content: "Built by Jerry Ganz (the fabulously wealthy man responsible for the mass production of seat-belts) in the 1970s, the Lava House's chief architectural pull was its extensive use of imported lava rock. Construction stopped suddenly shortly after construction began, and it has remained empty to this day.",
  picture: "http://4.bp.blogspot.com/_5jbMo5gkQWc/S710Pz3dwNI/AAAAAAAAAik/E-EJwTlde28/s1600/DSC_0694.jpg"
  },
  {
  user_id: 3,
  city_id: 3,
  title: "Gray Whale Cove, Pacifica",
  content: "The beach (a.k.a. Devil's Slide) features a sheltered cove surrounded by cliffs that drop abruptly into the Pacific Ocean. A steep trail leads down to the beach. There is a small picnic area on the bluff above.  Gray whales can often be seen close to the shore.",
  picture: "http://www.outdoorproject.com/sites/default/files/styles/cboxshow/public/1403213456/img_2703.jpg"
  },
  {
  user_id: 4,
  city_id: 4,
  title: "St. Michael's Cave",
  content: "No visit to Gibraltar would be complete without seeing St. Michael's Cave. The largest of the island's more than 150 caves, St. Michael's Cave lies at least 274 meters above sea level and is crammed full of spectacular stalactites and stalagmites. First recorded in AD 45, the cave has many legends associated with it, including one suggesting the island is secretly connected to Africa via a 24-kilometer-long tunnel.",
  picture: "http://www.planetware.com/photos-large/E/gibraltar-st-michaels-cave.jpg"
  },
  {
  user_id: 3,
  city_id: 2,
  title: "French Quarter",
  content: "The Vieux Carre or French Quarter of New Orleans, the old town center, extends along a crescent shaped bend on the Mississippi. It was prevalent in the entertainment quarter, which was demarcated by municipal ordinance in 1897 and marked out with red lamps, and in nearby Bourbon Street. ",
  picture: "http://www.planetware.com/photos-large/USLA/louisiana-new-orleans-french-quarter.jpg"
  },
  {
  user_id: 2,
  city_id: 3,
  title: "Big Ben",
  content: "When the Jubilee line platforms of Westminster station were being constructed in the '90s, one of the biggest engineering concerns was how the excavation of the ground would affect nearby Big Ben, which stands only 34m away. ",
  picture: "https://assets3.thrillist.com/v1/image/1677444/size/tmg-article_tall.jpg"
  },
  {
  user_id: 1,
  city_id: 5,
  title: "Cueva la Ventana, Arecibo, Puerto Rico",
  content: "Also checkout Petroglyphs at Cueva del Indio in Arecibo",
  picture: "http://www.elyunque.com/Caves/Puerto.Rico.coast.jpg"
  }
]

User.create(USERS)
City.create(CITIES)
Post.create(POSTS)
