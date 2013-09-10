FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do #FactoryGirl.create(:admin)を実行すると:userも実行されるみたい。
      admin true
    end
  end

  factory :micropost do
   content "Lorem ipsum"
   user #マイクロポストに関連づけられるユーザのことを知らせる。多分:userと勝手に関連づける。
  end
end
