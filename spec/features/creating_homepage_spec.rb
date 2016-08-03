require 'rails_helper'


RSpec.feature "Creating Home Page" do 

	scenario do 
		visit "/"

		expect(page).to have_content("Athletes Den")

		expect(pag).to have_content("Home")

		expect(page).to have_content("Workout Lounge")
	end
end