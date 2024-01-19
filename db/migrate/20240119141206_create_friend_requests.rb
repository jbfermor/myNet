class CreateFriendRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_requests, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :friend_id
      t.boolean :confirmed, default: :false

      t.timestamps
    end
  end
end
