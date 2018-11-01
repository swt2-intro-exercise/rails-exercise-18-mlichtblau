require 'rails_helper'

describe "Edit Author Page" do

  it "should render without errors" do
    @author = FactoryBot.create :author
    visit edit_author_path(@author)
  end

end