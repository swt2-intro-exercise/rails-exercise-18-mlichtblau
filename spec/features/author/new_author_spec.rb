require 'rails_helper'

describe "New author page", type: :feature do

   it "should render without error" do
     visit new_author_path
   end

  it "should have input fields for an author first name, last name and homepage" do
    visit new_author_path

    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should correctly submit the new author form" do
    visit new_author_path

    page.fill_in 'author[last_name]', with: 'Turing'
    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'

    find('input[type="submit"]').click
  end

  it "should show an error when creating invalid author" do
    visit new_author_path
    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'

    find('input[type="submit"]').click

    expect(page).to have_text('Last name can\'t be blank')
  end
end