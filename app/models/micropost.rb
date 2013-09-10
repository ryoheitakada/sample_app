class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') } #わからんから飛ばす、でもマイクロポストを時間でソートしてる感じ
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true #未入力を無効なmicropostと見なす
end
