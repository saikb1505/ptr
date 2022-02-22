class AddStatusToClientUser < ActiveRecord::Migration[7.0]
  def change
    add_column :client_users, :status, :integer
  end
end
