# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users can edit existing recipes' do
  before do
    FactoryBot.create(:recipe, recipe_name: 'Pancakes')

    visit '/'
    click_link 'See Recipes'
    click_link 'Pancakes'
    click_link 'Edit Recipe'
  end

  scenario 'with valid attributes' do
    fill_in 'Recipe Name', with: 'Flap Jacks'
    fill_in 'Serving Size', with: 2
    fill_in 'Ingredients', with: '1 Cup Of Milk, 1/2 Cup Of Flour'
    fill_in 'Directions', with: 'Mix evenly, fry up, and enjoy fam!'
    click_button 'Update Recipe'

    expect(page).to have_content 'Your recipe has been updated.'
    expect(page).to have_content 'Flap Jacks'
    expect(page).to have_content '2'
    expect(page).to have_content '1 Cup Of Milk 1/2 Cup Of Flour'
    expect(page).to have_content 'Mix evenly, fry up, and enjoy fam!'
  end

  scenario 'with invalid attributes' do
    fill_in 'Recipe Name', with: ''
    click_button 'Update Recipe'

    expect(page).to have_content 'Your recipe has not been updated.'
  end
end
