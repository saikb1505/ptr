class CreateBatches < ActiveRecord::Migration[7.0]
  def change
    create_table :batches do |t|
      t.string :batch_number
      t.integer :product_id
      t.string :batch_code
      t.string :mfg_date
      t.string :expiry_date
      t.decimal :mrp
      t.integer :status

      t.timestamps
    end
  end
end
