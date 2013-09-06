FactoryGirl.define do
  factory :user do
    name     "Ryohei Takada"
    email    "japanet-tk@docomo.ne.jp"
    password "foobar"
    password_confirmation "foobar"
  end
end
