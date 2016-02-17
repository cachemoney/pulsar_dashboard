require 'rails_helper'

feature "angular test" do
	let(:email)	{ "bob@test.com"}
	let(:password) {"password1234"}

	before { User.create!(email: email, password: password, password_confirmation: password) }

	scenario "angular app is working" do
		visit "/angular_test"

		# Log In
 		fill_in "Email", with: email
 		fill_in "Password", with: password
 		click_button "Log in"

    # Check that we go to the right page
		expect(page).to have_content("Name")

    # Test the page
		fill_in "name", with: "Bob"

		within "header h1" do
			expect(page).to have_content("Hello, Bob")
		end

	end
end