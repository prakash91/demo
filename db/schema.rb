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

ActiveRecord::Schema.define(version: 20140916075941) do

  create_table "employers", force: true do |t|
    t.string   "company_name"
    t.string   "company_type"
    t.integer  "contact"
    t.text     "address"
    t.date     "doo"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.integer  "pincode"
    t.integer  "total_employee"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon"
  end

  add_index "employers", ["user_id"], name: "index_employers_on_user_id"

  create_table "posts", force: true do |t|
    t.string   "category"
    t.string   "job_type"
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.integer  "salary_offered"
    t.integer  "required_experience"
    t.string   "required_profile"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",              default: true
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "resumes", force: true do |t|
    t.string   "resume_heading"
    t.string   "functional_area"
    t.string   "current_company"
    t.string   "position"
    t.text     "key_skills"
    t.integer  "total_experience"
    t.string   "attach_resume"
    t.integer  "expected_salary"
    t.boolean  "active",                default: true
    t.string   "highest_qualification"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resumes", ["user_id"], name: "index_resumes_on_user_id"

  create_table "seekers", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "gender"
    t.string   "contact"
    t.string   "current_location"
    t.date     "dob"
    t.string   "nationality"
    t.text     "permanent_address"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  add_index "seekers", ["user_id"], name: "index_seekers_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
