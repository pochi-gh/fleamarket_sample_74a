FactoryBot.define do

  factory :user do
    nickname              {"toda"}
    email                 {"todatoda@mail.com"}
    password              {"12345678"}
    password_confirmation {"12345678"}
    first_name            {"明雄"}
    last_name             {"矢部"}
    first_name_kana       {"アキオ"}
    last_name_kana        {"ヤベ"}
    birthday              {"2020-08-06"}
  end

end