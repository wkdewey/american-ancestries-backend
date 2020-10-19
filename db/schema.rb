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

ActiveRecord::Schema.define(version: 2020_10_19_165318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ancestry_groups", force: :cascade do |t|
    t.string "name"
    t.integer "national_pop"
  end

  create_table "place_ancestry_groups", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.bigint "ancestry_group_id", null: false
    t.integer "population"
    t.index ["ancestry_group_id"], name: "index_place_ancestry_groups_on_ancestry_group_id"
    t.index ["place_id"], name: "index_place_ancestry_groups_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.integer "population"
    t.integer "german_pop"
    t.integer "af_am_pop"
    t.integer "mexican_pop"
  end

  add_foreign_key "place_ancestry_groups", "ancestry_groups"
  add_foreign_key "place_ancestry_groups", "places"
end
