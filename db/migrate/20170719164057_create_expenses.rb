class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.decimal :amount
      t.integer :event_id, null: false
      t.string :attachment

      t.timestamps
    end
  end
end
