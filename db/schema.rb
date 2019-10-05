# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_05_104940) do

  create_table "parking_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "car_park_no"
    t.string "address"
    t.float "x_coord"
    t.float "y_coord"
    t.string "car_park_type"
    t.string "type_of_parking_system"
    t.string "short_term_parking"
    t.string "free_parking"
    t.string "night_parking"
    t.string "car_park_decks"
    t.string "gantry_height"
    t.string "car_park_basement"
    t.integer "total_lots"
    t.string "lot_type"
    t.integer "lots_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
