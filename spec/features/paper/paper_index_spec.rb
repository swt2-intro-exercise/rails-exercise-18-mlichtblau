require 'rails_helper'

describe "Paper Index Page" do

  it "should be able to filter papers by year" do
    FactoryBot.create :paper
    FactoryBot.create :paper, title: 'Test', year: 1960
    visit papers_path(year: 1950)
    expect(page).to_not have_text('Test')
  end

end