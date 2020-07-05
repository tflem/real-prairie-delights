# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users can create recipes' do
  scenario 'with valid attributes' do
    visit '/'

    click_link 'New Recipe'

    fill_in 'Recipe Name', with: 'Pancakes'
    fill_in 'Serving Size', with: 10
    fill_in 'Ingredients', with: 'Two cups of flour'
    fill_in 'Directions', with: 'Mix everything up, fry, and enjoy!'
    click_button 'Create Recipe'

    expect(page).to have_content 'Your recipe has been created.'

    recipe = Recipe.find_by(recipe_name: "Pancakes")
    expect(page.current_url).to eq recipe_url(recipe)

    title = "Pancakes - Recipes - Real Prairie Delights"
    expect(page).to have_title title
  end
end
