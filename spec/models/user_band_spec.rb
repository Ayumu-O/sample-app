require 'rails_helper'

RSpec.describe UserBand, type: :model do
  let(:user_band) { build(:user_band) }

  describe "validation test" do
    it "is valid with user_id, band_id, position" do
      expect(user_band).to be_valid
    end

    it "is invalid without user?id" do
      user_band.user_id = nil
      user_band.valid?
      expect(user_band.errors[:user_id]).to include("can't be blank")
    end
  end
end
