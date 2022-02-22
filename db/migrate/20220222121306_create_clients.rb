class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :email
      t.string :address_one
      t.string :address_two
      t.integer :city_id
      t.integer :state_id
      t.integer :country_id
      t.string :code

      t.timestamps
    end
  end
end
