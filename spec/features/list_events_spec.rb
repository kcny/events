require "spec_helper"

describe "Viewing the list of events" do
	it "shows the events" do

		event1 = Event.create(name: "Kayaking",
												location: "Victorial Falls, ZW",
												price: 95.00,
												description: 'Come kayak with us on the wet and wild Zambezi river',
												starts_at: 365.days.from_now)

			event2 = Event.create(name: "Swimming",
											location: "Fresno, CA",
											price: 0.00,
											description: 'Come kayak with us on the wet and wild Zambezi river',
											starts_at: 365.days.from_now)

			event3 = Event.create(name: "Got-gotch",
											location: "Harare, ZW",
											price: 50.00,
											description: 'Come kayak with us on the wet and wild Zambezi river',
											starts_at: 365.days.from_now)

		visit events_url

		expect(page).to have_text("Bulec Events")
		expect(page).to have_text(event1.name)
		expect(page).to have_text(event2.name)
		expect(page).to have_text(event3.name)

		expect(page).to have_text(event1.location)
		expect(page).to have_text(event1.description[0..10])
		expect(page).to have_text(event1.starts_at)
		expect(page).to have_text("$95")
		
	end
end
