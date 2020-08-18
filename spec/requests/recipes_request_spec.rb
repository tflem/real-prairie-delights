# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  it 'handles a missing recipe correctly' do
    get '/recipes/not-hither'

    expect(response).to redirect_to(recipes_path)

    message = 'The recipe you were looking for could not be found.'
    expect(flash[:alert]).to eq message
  end
end
