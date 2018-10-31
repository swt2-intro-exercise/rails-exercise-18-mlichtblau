require 'rails_helper'

describe "Author details page", type: :feature do

    it "should display author" do
      @alan = FactoryBot.create :author
      visit author_path(@alan)
      expect(page).to have_text("Alan")
    end
end