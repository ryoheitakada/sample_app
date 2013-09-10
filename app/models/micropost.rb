class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') } #わからんから飛ばす、でもマイクロポストを時間でソートしてる感じ
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true #未入力を無効なmicropostと見なす

  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
         user_id: user.id)
  end
end
