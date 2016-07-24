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

ActiveRecord::Schema.define(version: 20160723223624) do

  create_table "campings", force: :cascade do |t|
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

  create_table "regions", force: :cascade do |t|
    t.text     "descriptionregion"
    t.text     "nomderegion"
    t.text     "slug"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

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
