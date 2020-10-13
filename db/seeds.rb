# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
# Census tables
# B04006 People reporting ancestry
# B03001 Hispanic or Latino origin by specific origin
# B02009 African-American population
places = Place.create([
  { name: 'State College', population: 42256, german_pop: 7228, mexican_pop: 535, af_am_pop: 2119 },
  { name: 'Knoxville', population: 185429, german_pop: 20819, mexican_pop: 5408, af_am_pop: 33206 },
  { name: 'Boston', population: 694295, german_pop: 31518, mexican_pop: 8758, af_am_pop: 204052 },
  { name: 'New York', population: 8336817, german_pop: 239345, mexican_pop: 332286, af_am_pop: 2218369 },
  { name: 'Minneapolis', population: 429605, german_pop: 84505, mexican_pop: 24437, af_am_pop: 95847 },
  { name: 'Atlanta', population: 498073, german_pop: 25727, mexican_pop: 10515, af_am_pop: 253908 },
  { name: 'Santa Barbara', population: 91325, german_pop: 9828, mexican_pop: 29235, af_am_pop: 1136 },
  { name: 'Iowa City', population: 74566, german_pop: 21003, mexican_pop: 2512, af_am_pop: 6984 },
  { name: 'Cambridge', population: 115665, german_pop: 8780, mexican_pop: 1784, af_am_pop: 15470 },
  { name: 'Bloomington', population: 84058, german_pop: 15800, mexican_pop: 1826, af_am_pop: 4121 },
  { name: 'Madison', population: 252086, german_pop: 80774, mexican_pop: 10901, af_am_pop: 23843 },
])