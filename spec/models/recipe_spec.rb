require 'rails_helper'

RSpec.describe Recipe, :type => :model do
recipe = (
  described_class.new(title: "Test1", servings: "10", time: "10")
  )

  it "is valid with valid attributes" do
    expect(recipe).to be_valid
  end

  it "is not valid without a title" do
    recipe.title = nil
    expect(recipe).to_not be_valid
  end

  it "is not valid without servings" do
    recipe.servings = nil
    expect(recipe).to_not be_valid
  end

  it "is not valid without a time" do
    recipe.time = nil
    expect(recipe).to_not be_valid
  end

  it "is not valid without ingredients" do
    recipe.ingredients = nil
    expect(recipe).to_not be_valid
  end

  it "is not valid without a method" do
    recipe.method = nil
    expect(recipe).to_not be_valid
  end

end
