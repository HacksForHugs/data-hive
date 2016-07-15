# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160712235122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.date     "startdate"
    t.date     "enddate"
    t.date     "app_deadline"
    t.text     "description"
    t.integer  "hours_per_week"
    t.integer  "compensation"
    t.integer  "education_level"
    t.integer  "state",           default: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

<<<<<<< HEAD
<<<<<<< 559e1cd87b8847bf130e902af55d5d1932171c7d
<<<<<<< HEAD
<<<<<<< 72f3b5fbf66977d231fc9ac9e494e1a8c28a31a8
  create_table "questions", force: :cascade do |t|
    t.integer  "project_application_id"
    t.string   "title"
    t.text     "answer"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

=======
>>>>>>> Create application table/model
=======
>>>>>>> e0f24135902b8a107abc88aadf5d6962855ca7f7
  create_table "research_applications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "status"
  end

<<<<<<< HEAD
<<<<<<< 559e1cd87b8847bf130e902af55d5d1932171c7d
=======
>>>>>>> Create project table and model
=======
>>>>>>> 6d2e19b880afbef59319ef0269fb6b18526e5439
=======
>>>>>>> Create application table/model
=======
>>>>>>> e0f24135902b8a107abc88aadf5d6962855ca7f7
  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
