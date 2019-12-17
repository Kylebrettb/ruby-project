class AddFieldsToReservations < ActiveRecord::Migration[5.2]
  def change
  	add_column :reservations, :hotel_id, :integer
  	add_column :reservations, :user_id, :integer
  	add_column :reservations, :hotel_room_id, :integer
  end
end
