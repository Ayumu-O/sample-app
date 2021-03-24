require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { build(:post) }

  describe 'validation test' do
    it 'is valid with a content, user_id' do
      expect(post).to be_valid
    end

    it 'is invalid without content' do
      post.content = nil
      post.valid?
      expect(post.errors[:content]).to include("can't be blank")
    end
  end
end
