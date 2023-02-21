FactoryBot.define do

  factory :user do
    name { "nagasaki" }
    email { "example@example.com" }
    password { "password" }
    profile { "私のプロフィール" }
    admin { false }
  end

  factory :secound_user, class:User do
    name { "fukuoka" }
    email { "fukuoka@example.com" }
    password { "password" }
    profile { "僕のプロフィール" }
    admin { false }
  end
  factory :third_user, class:User do
    name { "tokyo" }
    email { "tokyo@example.com" }
    password { "password" }
    profile { "東京プロフィール" }
    admin { true }
  end
end
