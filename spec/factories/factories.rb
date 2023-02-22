FactoryBot.define do
  factory :factory do
    factory_name { 'ABC工場' }
    summary { '楽しい' }
    address { '北海道' }
    latitude { 35.123456 }
    longitude { 135.123456 }
  end

  factory :factory_2, class:User do
    factory_name { 'あいうえオート' }
    summary { 'いい感じ' }
    address { '大阪' }
    latitude { 35.123456 }
    longitude { 135.123456 }
  end

  factory :factory_3, class:User do
    factory_name { 'サービスサービス' }
    summary { '大型もできます' }
    address { '新潟県' }
    latitude { 35.123456 }
    longitude { 135.123456 }
  end
end
