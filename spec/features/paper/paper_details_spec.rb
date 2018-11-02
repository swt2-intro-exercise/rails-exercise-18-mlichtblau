require 'rails_helper'

describe "Paper Details Page", type: :feature do

  it "should display the authors name" do
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)
    expect(page).to have_text('Alan Turing')
  end
end