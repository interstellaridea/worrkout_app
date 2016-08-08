require 'rails_helper'

RSpec.feature "Signing out signed-in users" do
	before do
		@john = User.create(:email => 'john@test.com', :password=> 'password')
		login_as(@john)

	end

	scenario do
		visit "/"
		click_link "Sign out"
		expect(page).to have_content("Signed out successfully.")
	end

end