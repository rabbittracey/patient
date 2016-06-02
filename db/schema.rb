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

ActiveRecord::Schema.define(version: 20160602204816) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "patient_id"
    t.integer  "provider_id"
  end

  create_table "basic_informations", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "prefix"
    t.string   "postfix"
    t.string   "gender"
    t.date     "birthday"
    t.string   "address1"
    t.string   "address2"
    t.string   "country"
    t.integer  "phone_number"
    t.string   "email"
    t.text     "password"
    t.text     "password_confirmation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "immunizations", force: :cascade do |t|
    t.string   "patient_id",              limit: 30
    t.string   "administrator",           limit: 30
    t.datetime "date_administered",       limit: 30
    t.datetime "reimmunization_due_date", limit: 50
    t.text     "notes",                   limit: 500
    t.string   "ndc",                     limit: 20
    t.string   "cpt_code",                limit: 30
    t.string   "cvx_codx",                limit: 10
    t.string   "hcpcs_code",              limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medications", force: :cascade do |t|
    t.string   "drug_name",     limit: 200
    t.string   "fda_status",    limit: 100
    t.string   "ttddrugid",     limit: 100
    t.string   "lnm",           limit: 200
    t.string   "indication",    limit: 2000
    t.string   "cas_number",    limit: 50
    t.string   "formular",      limit: 2000
    t.string   "pubchem_cid",   limit: 100
    t.string   "pubchem_sid",   limit: 100
    t.string   "chebi_id",      limit: 100
    t.string   "superdrug_atc", limit: 1000
    t.string   "superdrug_cas", limit: 100
    t.string   "ndc",           limit: 25
    t.string   "side_effects",  limit: 415
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "patient_immunizations", force: :cascade do |t|
    t.string   "patient_id",              limit: 30
    t.string   "administrator",           limit: 30
    t.datetime "date_administered",       limit: 30
    t.datetime "reimmunization_due_date", limit: 50
    t.text     "notes",                   limit: 500
    t.string   "ndc",                     limit: 20
    t.string   "cpt_code",                limit: 30
    t.string   "cvx_codx",                limit: 10
    t.string   "hcpcs_code",              limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "fname"
    t.string   "lname"
    t.string   "middle_name"
    t.string   "home_phone_number"
    t.string   "cell_phone_number"
    t.string   "hicn"
    t.string   "secondary_insurance_id"
    t.string   "air_quality"
    t.string   "water_quality"
    t.string   "weather"
    t.string   "smoker"
    t.float    "tobacco_quantity_per_week"
    t.float    "alcohol_beverages_weekly"
    t.float    "weekly_sodium_intake"
    t.float    "hours_of_exercise_weekly"
    t.float    "daily_calories"
    t.float    "daily_sugar_intake"
    t.float    "daily_fat_intake"
    t.integer  "distance_from_pharmacy"
    t.integer  "distance_from_provider"
    t.string   "sensor_use"
    t.string   "car_owner"
    t.integer  "child_had"
    t.integer  "suspected_drug_abuse"
    t.string   "marital_status"
    t.string   "patient_email"
    t.string   "patient_street_address"
    t.string   "patient_city"
    t.string   "patient_state"
    t.string   "patient_zipcode"
    t.string   "patient_image_file_path"
    t.integer  "user_id"
  end

  add_index "patients", ["user_id"], name: "index_patients_on_user_id"

  create_table "providers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "providers", ["user_id"], name: "index_providers_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "fname"
    t.string   "country"
    t.string   "lname"
    t.string   "prefix"
    t.string   "postfix"
    t.string   "gender"
    t.date     "dob"
    t.string   "home_address1"
    t.string   "home_address2"
    t.integer  "home_phone_number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
