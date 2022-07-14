class AddStatusToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :status, :string, default: "available"
  end
end
