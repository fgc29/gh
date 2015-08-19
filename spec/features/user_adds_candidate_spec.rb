require 'spec_helper.rb'

feature "User adds a candidate to the database" do
  # start with the root path and fill in the name and email input fields
  before :each do
    visit new_candidate_path
    fill_form
  end

  scenario "user adds one email for a candidate" do
    click_on 'submit'
  end

  scenario "User adds more than one email for a candidate", :js => true do
    page.find('.add').click
    find("input[placeholder='email2']").set "example1@gmail.com"
    expect(page).to have_selector('input', count: 4)
    click_on 'submit'
  end

end
