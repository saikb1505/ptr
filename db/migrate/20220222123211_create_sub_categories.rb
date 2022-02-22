class CreateSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_categories do |t|
      t.integer :category_id
      t.string :name
      t.string :code
      t.integer :status

      t.timestamps
    end
  end
end
