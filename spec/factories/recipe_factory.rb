# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    recipe_name { 'Example recipe' }
    serving_size { 3 }
    ingredients { 'Example ingredients' }
    directions { 'Example directions' }
  end
end
