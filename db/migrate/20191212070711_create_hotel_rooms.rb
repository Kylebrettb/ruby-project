class CreateHotelRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :hotel_rooms do |t|
      t.string :room_type
      t.float :price
      t.text :description
      t.integer :hotel_id

      t.timestamps
    end
  end
end
