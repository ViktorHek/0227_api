FactoryBot.define do
  factory :product do
    title { "MyString" }
    association :user
  end
end
