FactoryBot.define do
  factory :item do
    name                {"test"}
    explain             {"testの説明文"}
    category_id         {"1"}
    brand               {"ブランド名だよー"}
    state_id            {"1"}
    shipping_burden_id  {"1"}
    prefecture_id       {"1"}
    shipping_day_id     {"1"}
    price              {"999"}
    after(:build) do |item|                           #追記
      item.images << build(:image, item: item)  #追記
    end  
  end
end
