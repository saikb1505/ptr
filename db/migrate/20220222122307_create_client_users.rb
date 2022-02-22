class CreateClientUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :client_users do |t|
      t.integer :client_id
      t.string :name
      t.string :email
      t.string :mobile
      t.integer :designation
      t.string :employee_code

      t.timestamps
    end
  end
end
