FactoryBot.define do

  factory :address do
    destination_first_name            {"明雄"}
    destination_last_name             {"矢部"}
    destination_first_name_kana       {"アキオ"}
    destination_last_name_kana        {"ヤベ"}
    postal_code                       {"0120340"}
    prefecture_id                     {"1"}
    city                              {"芝公園"}
    block                             {"2丁目"}
  end

end