# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_24_030719) do

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.string "common_name"
  end

  create_table "journals", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.integer "plant_id"
    t.datetime "created_at"
    t.index ["plant_id"], name: "index_journals_on_plant_id"
    t.index ["user_id"], name: "index_journals_on_user_id"
  end

  create_table "lights", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "common_name"
    t.string "image_url"
    t.integer "type_id"
    t.integer "family_id"
    t.integer "light_id"
    t.integer "water_id"
    t.integer "soil_id"
    t.index ["family_id"], name: "index_plants_on_family_id"
    t.index ["light_id"], name: "index_plants_on_light_id"
    t.index ["soil_id"], name: "index_plants_on_soil_id"
    t.index ["type_id"], name: "index_plants_on_type_id"
    t.index ["water_id"], name: "index_plants_on_water_id"
  end

  create_table "soils", force: :cascade do |t|
    t.string "name"
    t.text "ingredients"
    t.text "amounts"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.integer "family_id"
    t.index ["family_id"], name: "index_types_on_family_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  create_table "waters", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
  end

end
