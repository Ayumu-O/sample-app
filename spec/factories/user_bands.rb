FactoryBot.define do
  factory :user_band do
    sequence(:user_id) {|i| "#{i}" }
    sequence(:band_id) {|i| "#{i}" }
    position { "guitar" }
  end
end
