require 'rails_helper'

RSpec.describe Comment, type: :model do
  let (:recipe) {Recipe.new(title: "Test1", servings: "10", time: "10",
    ingredients: "Potatoes", method: "potatoes")}
  let (:comment) {Comment.new(commenter: "Test1", body: "Testcomment", recipe: recipe)}


  describe "Associations" do
    it "has one recipe" do
      assc = described_class.reflect_on_association(:recipe)
      expect(assc.macro).to eq :belongs_to
    end
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(comment).to be_valid
    end

    it "is not valid without a commenter" do
      comment.commenter = nil
      expect(comment).to_not be_valid
    end

    it "is not valid without a body" do
      comment.body = nil
      expect(comment).to_not be_valid
    end
  end


end
