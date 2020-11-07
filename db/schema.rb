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

ActiveRecord::Schema.define(version: 2020_11_07_232832) do

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.boolean "restricted"
    t.integer "defense"
    t.integer "soak"
    t.integer "cost"
    t.integer "encumbrance"
    t.integer "rarity"
    t.text "description"
    t.text "brands"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "hard_points"
  end

  create_table "character_armors", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "armor_id", null: false
    t.integer "quantity"
    t.integer "hard_points"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["armor_id"], name: "index_character_armors_on_armor_id"
    t.index ["character_id"], name: "index_character_armors_on_character_id"
  end

  create_table "character_equipments", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "equipment_id", null: false
    t.integer "quantity"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_equipments_on_character_id"
    t.index ["equipment_id"], name: "index_character_equipments_on_equipment_id"
  end

  create_table "character_modifications", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "modification_id", null: false
    t.integer "quantity"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_modifications_on_character_id"
    t.index ["modification_id"], name: "index_character_modifications_on_modification_id"
  end

  create_table "character_stats", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "combat_kills"
    t.integer "combat_assists"
    t.integer "combat_damage"
    t.integer "combat_crits"
    t.integer "wounds_taken"
    t.integer "wounds_healed"
    t.integer "crit_inj_sustained"
    t.integer "crit_inj_healed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_stats_on_character_id"
  end

  create_table "character_weapons", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "weapon_id", null: false
    t.integer "quantity"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_weapons_on_character_id"
    t.index ["weapon_id"], name: "index_character_weapons_on_weapon_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.string "career"
    t.integer "soak"
    t.integer "wound_threshold"
    t.string "strain_threshold"
    t.integer "defense_ranged"
    t.integer "defense_melee"
    t.integer "brawn"
    t.integer "agility"
    t.integer "intellect"
    t.integer "cunning"
    t.integer "presence"
    t.integer "willpower"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "character_id", null: false
    t.string "last_known_location"
    t.integer "planet_id", null: false
    t.text "details"
    t.integer "warmth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_contacts_on_character_id"
    t.index ["planet_id"], name: "index_contacts_on_planet_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.boolean "restricted"
    t.integer "encumbrance"
    t.integer "cost"
    t.integer "rarity"
    t.text "description"
    t.text "brands"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "modifications", force: :cascade do |t|
    t.string "name"
    t.boolean "restricted"
    t.integer "cost"
    t.integer "encumbrance"
    t.integer "hp_required"
    t.integer "rarity"
    t.text "brands"
    t.text "base_modifiers"
    t.text "mod_options"
    t.string "attachment_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "system"
    t.string "sector"
    t.string "region"
    t.integer "year"
    t.integer "day"
    t.bigint "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "character_id", null: false
    t.string "name"
    t.string "attr"
    t.string "category"
    t.boolean "career"
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_skills_on_character_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.integer "credits"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "manufacturer"
    t.string "model"
    t.string "hull_type"
    t.integer "primary_hyperdrive"
    t.integer "secondary_hyperdrive"
    t.boolean "navicomputer"
    t.string "sensor_range"
    t.integer "passenger_capacity"
    t.string "complement"
    t.integer "cost"
    t.integer "rarity"
    t.integer "hard_points"
    t.integer "capacity"
    t.integer "silhouette"
    t.integer "speed"
    t.integer "handling"
    t.integer "armor"
    t.integer "hull_trauma_threshold"
    t.string "system_strain_threshold"
    t.integer "defense_fore"
    t.integer "defense_aft"
    t.integer "defense_port"
    t.integer "defense_starboard"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.boolean "restricted"
    t.string "skill"
    t.integer "damage"
    t.integer "crit"
    t.string "range"
    t.integer "encumbrance"
    t.integer "hard_points"
    t.integer "cost"
    t.integer "rarity"
    t.text "specials"
    t.text "brands"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "character_armors", "armors"
  add_foreign_key "character_armors", "characters"
  add_foreign_key "character_equipments", "characters"
  add_foreign_key "character_equipments", "equipment"
  add_foreign_key "character_modifications", "characters"
  add_foreign_key "character_modifications", "modifications"
  add_foreign_key "character_stats", "characters"
  add_foreign_key "character_weapons", "characters"
  add_foreign_key "character_weapons", "weapons"
  add_foreign_key "contacts", "characters"
  add_foreign_key "contacts", "planets"
  add_foreign_key "skills", "characters"
end
