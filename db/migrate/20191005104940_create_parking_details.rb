class CreateParkingDetails < ActiveRecord::Migration[6.0]
	def change
		create_table :parking_details do |t|
			t.string :car_park_no
			t.string :address
			t.float :x_coord
			t.float :y_coord
			t.string :car_park_type
			t.string :type_of_parking_system
			t.string :short_term_parking
			t.string :free_parking
			t.string :night_parking
			t.string :car_park_decks
			t.string :gantry_height
			t.string :car_park_basement
			t.integer :total_lots
			t.string :lot_type
			t.integer :lots_available
			t.timestamps
		end
	end
end
