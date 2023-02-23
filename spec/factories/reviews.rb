FactoryBot.define do
  factory :review do
    content { "素晴らしい工場です！また行きます！" }
    association :user
    association :factory
  end
end
