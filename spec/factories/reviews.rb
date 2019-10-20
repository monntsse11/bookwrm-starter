FactoryBot.define do
  factory :review do
    description { "MyText" }
    rating { 1 }
    book { nil }
    user { nil }
  end
end
