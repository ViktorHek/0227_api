FactoryBot.define do
  factory :product do
    title { "MyString" }
    description { "MyText" }
    association :user
  end
end
