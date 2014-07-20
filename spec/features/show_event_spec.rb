require "spec_helper"

describe "Viewing an individual event" do

	it "shows the event's details" do
		event = Event.create(name: "Kayaking",
												location: "Victorial Falls, ZW",
												price: 95.00,
												description: 'Come kayak with us on the wet and wild Zambezi river',
												starts_at: 365.days.from_now)

				visit event_url(event)

		expect(page).to have_text(event.name)
		expect(page).to have_text(event.location)
		expect(page).to have_text(event.description)
		expect(page).to have_text(event.starts_at)
	
		
	end

  it "shows the price for an event with a non-zero price" do
    event = Event.create(event_attributes(price: 35.00))
    
    visit event_path(event)
    
    expect(page).to have_text("$35.00")
  end
  
  it "shows 'Free' for an event with a zero price" do
    event = Event.create(event_attributes(price: 0.00))
  
    visit event_path(event)
  
    expect(page).to have_text("Free")
  end
end