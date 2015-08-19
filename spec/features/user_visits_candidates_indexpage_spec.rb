require 'spec_helper.rb'

feature "User visits candidate index page via link on homepage" do
  # visit the root path before running each scenario
  before :each do
    visit root_path
  end

  scenario "successfully" do
    click_on "Added Candidates"
    expect(page).to have_content 'Candidates in the System'
  end

  scenario "New Candidate Emails and Name are visible", :js => true do
    # create a new candidate with two emails
    # created fill_form to DRY up test code
    fill_form
    page.find('.add').click
    find("input[placeholder='email2']").set "example1@gmail.com"
    click_on 'submit'

    # view candidate on the index page with name and emails displayed
    click_on "Added Candidates"
    expect(page).to have_content 'First_name Last_name'
    expect(page).to have_content 'example@gmail.com'
    expect(page).to have_content 'example1@gmail.com'
  end

end
