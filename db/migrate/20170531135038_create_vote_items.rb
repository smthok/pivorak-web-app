class CreateVoteItems < ActiveRecord::Migration[5.0]
  def change
    create_table :vote_items do |t|
      t.string  :title
      t.integer :value, default: 0

      t.references :source, index: true, polymorphic: true

      t.timestamps
    end
  end
end
