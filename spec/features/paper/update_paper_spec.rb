require 'rails_helper'

describe "Update Paper Page" do

  it "should save updated authors list to paper" do
    @alan = FactoryBot.create :author
    @peter = FactoryBot.create(:author, first_name: 'Peter', last_name: 'Plagiarist')
    @paper = FactoryBot.create(:paper, authors: [@alan])
    visit edit_paper_path(@paper)
    select = find('select')
    select.select @peter.name
    find("input[type=\"submit\"]").click
    @paper.reload
    expect(@paper.authors).to include(@peter)
  end
end