# frozen_string_literal: true

require 'rails_helper'

RSpec.feature "Users can delete recipes" do
  scenario "successfully" do
    FactoryBot.create(:recipe, recipe_name: "Pancakes")

    visit '/'
    click_link 'See Recipes'
    click_link 'Pancakes'
    click_link 'Delete Recipe'

    expect(page).to have_content "Your recipe has been deleted."
    expect(page.current_url).to eq recipes_url
    expect(page).to have_no_content "Pancakes"
  end
end




