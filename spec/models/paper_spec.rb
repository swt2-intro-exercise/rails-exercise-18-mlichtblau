require 'rails_helper'

describe "Paper Model", type: :model do

  it "should require title to be not empty" do
    @paper = FactoryBot.create :paper, title: ""
    expect(@paper).to_not be_valid
  end
end
