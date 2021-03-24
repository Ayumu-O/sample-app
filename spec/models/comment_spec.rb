require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { build(:comment) }

  describe 'validation test' do
    it 'is valid with a content, user_id, post_id' do
      expect(comment).to be_valid
    end

    it 'is invalid without content' do
      comment.content = nil
      comment.valid?
      expect(comment.errors[:content]).to include("can't be blank")
    end
  end
end
