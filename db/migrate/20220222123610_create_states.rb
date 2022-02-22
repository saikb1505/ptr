class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.integer :country_id
      t.string :name
      t.string :code
      t.integer :status

      t.timestamps
    end
  end
end
