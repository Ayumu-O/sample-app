FactoryBot.define do
  factory :comment do
    association :post
    user { post.user}
    content { 'テスト' }
  end
end
