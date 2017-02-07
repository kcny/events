# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create!([
  {
		name: "Kayaking",
		location: "Victorial Falls, ZW",
		price: 95.00,
		description: 'Come kayak with us on the wet and wild Zambezi river',
		starts_at: 365.days.from_now

  },
  {
		name: "Swimming",
		location: "Fresno, CA",
		price: 0.00,
		description: 'Come kayak with us on the wet and wild Zambezi river',
		starts_at: 365.days.from_now
  },
  {
		name: "Got-gotch",
		location: "Harare, ZW",
		price: 50.00,
		description: 'Come kayak with us on the wet and wild Zambezi river',
		starts_at: 365.days.from_now

  }
])
