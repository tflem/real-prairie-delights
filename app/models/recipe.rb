# frozen_string_literal: true

class Recipe < ApplicationRecord
	validates :recipe_name, presence: true
end