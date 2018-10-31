require 'rails_helper'

describe "Author Index page", type: :feature do

  it "should render without errors" do
    @alan = FactoryBot.create :author
    visit author_index_path
    expect(page).to have_link 'New', href: new_author_path
    expect(page).to have_text @alan.first_name
  end
end