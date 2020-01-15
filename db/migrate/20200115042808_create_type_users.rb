class CreateTypeUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :type_users do |t|
      t.integer :type_usr
      t.string :data

      t.timestamps
    end
  end
end
