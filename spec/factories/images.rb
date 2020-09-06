FactoryBot.define do

  factory :image do
    src   {File.open("#{Rails.root}/spec/images/00.jpg")}
    item
  end

end
