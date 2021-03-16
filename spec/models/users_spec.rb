require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = build(:user)
  end

  it "is valid with a name, email, password" do
    expect(@user).to be_valid
  end

  it "is invalid without name" do
    @user.name = nil
    @user.valid?
    expect(@user.errors[:name]).to include("can't be blank")
  end

  it "is invalid without email" do
    @user.email = nil
    @user.valid?
    expect(@user.errors[:email]).to include("can't be blank")
  end

  it "is invalid without password" do
    @user.password = nil
    @user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it "is invalid with a duplicate email" do
    User.create(
      name: "チュートリアル　太郎",
      email: "test2@test.com",
      password: "password",
    )

    user = User.new(
      name: "チュートリアル　次郎",
      email: "test2@test.com",
      password: "password",
    )

    expect(user.errors[:email]).to include("has already been taken")
  end
end
