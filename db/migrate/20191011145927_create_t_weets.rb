class CreateTWeets < ActiveRecord::Migration[5.1]
  def change
    create_table :t_weets do |t|
      t.text :t_weet

      t.timestamps
    end
  end
end
