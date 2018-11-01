require 'rails_helper'

describe "Author Index page", type: :feature do

  before :each do
    @alan = FactoryBot.create :author
    visit authors_path
  end

  it "should render without errors" do
    expect(page).to have_link 'New', href: new_author_path
    expect(page).to have_text @alan.first_name
  end

  it "should have a link to the authors edit page" do
    expect(page).to have_link href: edit_author_path(@alan)
  end

  it "should have a link to delete the author" do
    expect(page).to have_link 'Delete'
  end

end