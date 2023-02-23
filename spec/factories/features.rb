FactoryBot.define do
  factory :feature do
    id{1}
    feature_name {'車検'}
  end
  factory :feature_2 ,class:Feature do
    id{2}
    feature_name {'塗装'}
  end
  factory :feature_3 ,class:Feature do
    id{3}
    feature_name {'新車・中古車'}
  end
end
