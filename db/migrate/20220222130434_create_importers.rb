class CreateImporters < ActiveRecord::Migration[7.0]
  def change
    create_table :importers do |t|
      t.string :name
      t.string :address_one
      t.string :address_two
      t.integer :city_id
      t.integer :state_id
      t.integer :country_id
      t.integer :pincode

      t.timestamps
    end
  end
end
