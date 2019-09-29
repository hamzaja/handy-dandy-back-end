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

ActiveRecord::Schema.define(version: 2019_09_26_213157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "time"
    t.string "date"
    t.bigint "this_user_id"
    t.bigint "other_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["other_user_id"], name: "index_bookings_on_other_user_id"
    t.index ["this_user_id"], name: "index_bookings_on_this_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "catagory"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_skills", force: :cascade do |t|
    t.string "experience"
    t.bigint "user_id"
    t.bigint "skill_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skill_id"], name: "index_user_skills_on_skill_id"
    t.index ["user_id"], name: "index_user_skills_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "username"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "avalability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
