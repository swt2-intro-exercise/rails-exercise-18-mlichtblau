require 'rails_helper'

describe "Edit Paper Page" do

  it "should have multiple Authors to select" do
    @paper = FactoryBot.create :paper
    visit edit_paper_path(@paper)
    expect(page).to have_css('select[multiple]')
  end

end