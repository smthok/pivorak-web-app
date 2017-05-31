class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :value, default: 1

      t.references :voter,  index: true, references: :users
      t.references :target, index: true, polymorphic: true

      t.timestamps
    end
  end
end
