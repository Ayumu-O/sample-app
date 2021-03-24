FactoryBot.define do
  factory :post do
    association :user
    content { 'test' }
  end
end
