def event_attributes(overrides = {})

	{
		name: "Kayaking",
		location: "Victorial Falls, ZW",
		price: 95.00,
		description: 'Come kayak with us on the wet and wild Zambezi river',
		starts_at: 365.days.from_now }.merge(overrides)
	end

