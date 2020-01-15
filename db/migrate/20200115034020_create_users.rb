class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :profission
      t.string :date_nasc
      t.integer :type_user
      t.string :email
      t.string :phone
      t.string :cpf
      t.string :addr_state
      t.string :addr_country
      t.string :addr_city
      t.string :addr_street
      t.string :addr_zipcode
      t.string :password
      t.json :data
      t.string :image_url
      t.string :movie_url

      t.timestamps
    end
  end
end
