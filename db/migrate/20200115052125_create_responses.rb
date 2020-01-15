class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.string :description
      t.integer :card_id
      t.integer :order

      t.timestamps
    end
  end
end
