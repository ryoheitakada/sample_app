class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User" #宣言も同時にしてる？クラスだから良いのかな・・・？

  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
