class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
    #複合キーインデックスが作成できる。idと作成時刻の両方の検索条件ってことね
  end
end
