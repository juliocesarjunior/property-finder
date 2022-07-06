class AddParkingSpacesToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :parking_spaces, :integer, default: 0
  end
end
