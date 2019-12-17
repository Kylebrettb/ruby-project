class ChangeDataTypesForReservation < ActiveRecord::Migration[5.2]
  def change
  	change_column :reservations, :check_in, :date
  	change_column :reservations, :check_out, :date
  	change_column :reservations, :price, :float
  	 
  end
end
