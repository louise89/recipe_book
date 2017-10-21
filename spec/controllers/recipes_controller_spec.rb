require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
#  let(:valid_recipe)

describe "GET #index" do
  it "returns a success response" do
    recipe = Recipe.create!
    get :index, params: {}
    expect(response).to be_success
  end
end

end
