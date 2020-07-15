# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users can view recipes' do
  scenario 'with recipe details' do
    recipe = FactoryBot.create(:recipe, recipe_name: 'Pancakes')

    visit '/'
    click_link 'See Recipes'
    click_link 'Pancakes'

    expect(page.current_url).to eq recipe_url(recipe)
  end
end
