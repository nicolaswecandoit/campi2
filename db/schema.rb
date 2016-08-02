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

ActiveRecord::Schema.define(version: 20160802123240) do

  create_table "campings", id: false, force: :cascade do |t|
    t.integer  "id",                 null: false
    t.string   "nom"
    t.string   "adresse"
    t.string   "code_postale"
    t.string   "commune"
    t.string   "courriel"
    t.string   "site_internet"
    t.integer  "emplacements"
    t.string   "tel"
    t.text     "description"
    t.string   "nomdep"
    t.string   "region"
    t.integer  "numdep"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "slug"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "ville_id"
    t.integer  "region_id"
    t.integer  "departement_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "etoile"
  end

  create_table "departements", force: :cascade do |t|
    t.text     "description"
    t.string   "nomdep"
    t.integer  "departement_id"
    t.string   "slug"
    t.integer  "region_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "models", force: :cascade do |t|
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
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "regions", force: :cascade do |t|
    t.text     "descriptionregion"
    t.text     "nomderegion"
    t.text     "slug"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "nom"
    t.string   "commune"
    t.string   "nomdep"
    t.string   "region"
    t.string   "etoile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "villes", force: :cascade do |t|
    t.text     "nomcommune"
    t.text     "description"
    t.string   "nomdep"
    t.integer  "departement_id"
    t.integer  "code_postale"
    t.text     "region"
    t.integer  "region_id"
    t.text     "slug"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
