class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes, id: :uuid do |t|
      t.references :likable, polymorphic: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
