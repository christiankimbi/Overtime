require 'rails_helper'

RSpec.describe Post, type: :model do

  before do
    @user =  User.create(email: "test@test.com", password: "password123", password_confirmation: "password123", first_name: "john", last_name: "Snow")
    @post = Post.create(date: Date.today, rationale: "Anything", user_id: @user.id)
  end

  describe "Creation" do
    it 'can be created'do
      expect(@post).to be_valid
    end

    it "cannot be created without a date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).not_to be_valid
    end
  end
end
