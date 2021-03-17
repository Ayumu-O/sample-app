require 'rails_helper'

RSpec.describe Band, type: :model do
  let(:band) { build(:band) }

  describe "validation test" do
    it "is valid with name" do
      expect(band).to be_valid
    end

    it "is invalid without name" do
      band.name = nil
      band.valid?
      expect(band.errors[:name]).to include("can't be blank")
    end
  end
end
