# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_16_035322) do

  create_table "handicaps", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.date "birthday"
    t.string "gender"
    t.string "handicap01"
    t.string "handicap02"
    t.string "handicap03"
    t.string "handicap04"
    t.string "handicap05"
    t.string "like01"
    t.string "like02"
    t.string "like03"
    t.string "like04"
    t.string "like05"
    t.string "like06"
    t.string "like07"
    t.string "like08"
    t.string "like09"
    t.string "like10"
    t.string "bad01"
    t.string "bad02"
    t.string "bad03"
    t.string "bad04"
    t.string "bad05"
    t.string "bad06"
    t.string "bad07"
    t.string "bad08"
    t.string "bad09"
    t.string "bad10"
    t.string "image"
    t.string "adress"
    t.text "area"
    t.text "profile"
  end

  create_table "helpers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "gender"
    t.date "birthday"
    t.integer "performance"
    t.text "profile"
    t.decimal "evaluation", precision: 10
    t.string "helper_job01"
    t.string "helper_job02"
    t.string "helper_job03"
    t.string "helper_job04"
    t.string "helper_job05"
    t.string "helper_job06"
    t.string "helper_job07"
    t.string "helper_job08"
    t.string "helper_job09"
    t.string "helper_job10"
    t.time "operating_time01"
    t.time "operating_time02"
    t.time "operating_time03"
    t.integer "money"
    t.integer "pool_money"
    t.integer "point"
    t.string "like01"
    t.string "special_skill"
    t.integer "like02"
    t.integer "like03"
    t.integer "like04"
    t.integer "like05"
    t.string "uid"
    t.string "provider"
    t.string "image"
    t.index ["email"], name: "index_helpers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_helpers_on_reset_password_token", unique: true
  end

  create_table "jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.integer "price"
    t.text "service"
    t.string "expect"
    t.integer "office_id"
    t.integer "handicap_id"
    t.integer "service_category_id"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.string "image"
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "room_id"
    t.integer "helper_id"
    t.integer "office_id"
  end

  create_table "offices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "area"
    t.string "website"
    t.string "authorization01"
    t.string "authorization02"
    t.string "authorization03"
    t.string "authorization04"
    t.string "authorization05"
    t.index ["email"], name: "index_offices_on_email", unique: true
    t.index ["reset_password_token"], name: "index_offices_on_reset_password_token", unique: true
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text"
    t.integer "helper_id"
    t.integer "office_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "helper_id"
  end

  create_table "service_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
