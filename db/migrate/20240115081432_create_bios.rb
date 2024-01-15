class CreateBios < ActiveRecord::Migration[7.0]
  def change
    create_table :bios, id: :uuid do |t|
      t.string :nickname, null: false, unique: true
      t.string :name
      t.string :surname1
      t.string :surname2
      t.date :birth_date, null: false
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :country
      t.string :phone
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
