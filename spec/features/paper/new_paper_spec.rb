require 'rails_helper'

describe "New Paper Page", type: :feature do

  it "should render without errors" do
    visit new_paper_path
  end
end