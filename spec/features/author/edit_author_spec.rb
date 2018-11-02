require 'rails_helper'

describe "Edit Author Page", type: :feature do

  it "should render without errors" do
    @author = FactoryBot.create :author
    visit edit_author_path(@author)
  end

  it "should save the changes" do
    @author = FactoryBot.create :author
    visit edit_author_path(@author)
    page.fill_in 'author[first_name]', with: @author.first_name
    page.fill_in 'author[homepage]', with: @author.homepage
    page.fill_in 'author[last_name]', with: 'Mathison'
    find('input[type="submit"]').click
    @author.reload
    expect(@author.last_name).to eq('Mathison')
  end

end