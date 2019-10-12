class AddUserIdToTWeets < ActiveRecord::Migration[5.1]
  def change
    add_column :t_weets, :user_id, :integer
  end
end
