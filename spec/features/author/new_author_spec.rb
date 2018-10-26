require 'rails_helper'

describe "New author page", type: :feature do

 it "should render withour error" do
   visit new_author_path
 end

  it "should have input fields for an author first name, last name and homepage" do
    visit new_author_path

    expect(page).to have_field('author[firstName]')
    expect(page).to have_field('author[lastName]')
    expect(page).to have_field('author[homepage]')
  end
end