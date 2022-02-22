class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.integer :sub_category_id
      t.string :name
      t.string :code
      t.integer :status

      t.timestamps
    end
  end
end
