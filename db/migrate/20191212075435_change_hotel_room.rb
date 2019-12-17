class ChangeHotelRoom < ActiveRecord::Migration[5.2]
  def change
  	change_column :hotel_rooms, :hotel_id, :integer
  end
end
