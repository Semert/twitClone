class CreateTWeets < ActiveRecord::Migration[5.1]
  def change
    create_table :t_weets do |t|
      t.text :Tweet

      t.timestamps
    end
  end
end
