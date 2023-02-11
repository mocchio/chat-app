class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, null: false, foreign_key: true      #外部キーのカラムを追加し、room_idカラムが生成され、外部キー制約を設定
      t.references :user, null: false, foreign_key: true      #外部キーのカラムを追加し、user_idカラムが生成され、外部キー制約を設定
      
      t.timestamps
    end
  end
end
