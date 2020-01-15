class CreateTypeCards < ActiveRecord::Migration[5.2]
  def change
    create_table :type_cards do |t|
      t.string :name

      t.timestamps
    end
  end
end
