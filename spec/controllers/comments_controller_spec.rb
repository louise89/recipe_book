require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

    describe "POST #create" do
    context "with valid attributes" do
      it "saves the new comment in the database"
      it "redirects to the recipe"
    end

    context "with invalid attributes" do
      it "does not save to the database"
      it "returns errors"
    end

end
