FactoryBot.define do
  factory :sns_credential do
    provider { "facebook" }
    uid { "123456" }
    user_id { "123" }
  end
end
