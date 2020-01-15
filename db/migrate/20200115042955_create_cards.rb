class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title
      t.integer :type_usr_id
      t.string :type_card_id
      t.string :description
      t.string :image_url
      t.string :movie_url
      t.string :link_url
      t.string :headline
      t.json :context

      t.timestamps
    end
  end
end
