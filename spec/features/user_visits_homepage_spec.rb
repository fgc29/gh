require 'spec_helper.rb'

#  first acceptances test is a smoke test, to ensure that the app is running
feature "User Visits Homepage" do
  scenario "successfully" do
    visit root_path
    expect(page).to have_css 'h1', text: 'Add A New Candidate'
  end
end
