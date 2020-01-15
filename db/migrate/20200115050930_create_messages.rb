class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :text
      t.integer :visualized
      t.integer :send_user_id
      t.integer :recive_user_id
      t.date :createAt

      t.timestamps
    end
  end
end
