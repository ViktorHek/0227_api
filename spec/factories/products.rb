FactoryBot.define do
  factory :product do
    title { "MyString" }
    description { "MyDescription" }
    association :user
  end
end
