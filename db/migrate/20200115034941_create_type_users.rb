class CreateTypeUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :type_users do |t|
      t.string :type
      t.json :data

      t.timestamps
    end
  end
end
