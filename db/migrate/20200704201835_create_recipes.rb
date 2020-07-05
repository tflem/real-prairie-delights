# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.integer :serving_size
      t.text :ingredients
      t.text :directions

      t.timestamps
    end
  end
end
