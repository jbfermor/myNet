class AddUseridToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :commentarist, :string
  end
end
