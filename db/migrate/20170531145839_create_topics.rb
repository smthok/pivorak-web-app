class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string  :title
      t.string  :slug, index: true
      t.text    :description
      t.integer :status
      t.boolean :published, default: false

      t.references :creator, index: true, references: :users

      t.timestamps
    end
  end
end
