require 'rails_helper'

describe "Author model", type: :model do

  before :each do
    @author = FactoryBot.create :author
  end

  it "should create new Author with first name, last name and homepage" do
    expect(@author.first_name).to eq("Alan")
    expect(@author.last_name).to eq("Turing")
    expect(@author.homepage).to eq("http://wikipedia.de/Alan_Turing")
  end

  it "should have a name which combines first name and last name" do
    expect(@author.name).to eq("Alan Turing")
  end

  it "should not validate when last_name is missing" do
    @alan = Author.new(first_name: 'Alan', homepage: 'http://wikipedia.de/Alan_Turing')
    expect(@alan).to_not be_valid
  end
end