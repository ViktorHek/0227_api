class AddUserIdToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :user_id, :integer, null: false, foreign_key: true
  end
end
