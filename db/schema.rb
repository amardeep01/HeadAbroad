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

ActiveRecord::Schema.define(version: 20160925062618) do

  create_table "courses", force: :cascade do |t|
    t.integer  "university_id",     limit: 4
    t.string   "name",              limit: 60
    t.string   "tuition_fee",       limit: 15
    t.string   "hostel_fee",        limit: 15
    t.string   "twelfth",           limit: 10
    t.string   "bachelors",         limit: 10
    t.string   "gre",               limit: 50
    t.string   "gmat",              limit: 20
    t.string   "acceptance_ratio",  limit: 20
    t.string   "melab",             limit: 15
    t.string   "cae",               limit: 15
    t.string   "cael",              limit: 15
    t.string   "sat",               limit: 15
    t.string   "ielts",             limit: 15
    t.string   "toefl",             limit: 15
    t.string   "pte",               limit: 15
    t.text     "lor",               limit: 65535
    t.text     "essay",             limit: 65535
    t.text     "cv",                limit: 255
    t.text     "document_required", limit: 255
    t.string   "application_link",  limit: 100
    t.string   "application_fee",   limit: 15
    t.text     "deadlines",         limit: 255
    t.text     "average",           limit: 255
    t.text     "additional_info",   limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string   "name",             limit: 50
    t.text     "description",      limit: 65535
    t.string   "contact",          limit: 20
    t.string   "email",            limit: 30
    t.string   "acceptance_ratio", limit: 5
    t.text     "address",          limit: 255
    t.string   "city",             limit: 20
    t.string   "state",            limit: 20
    t.string   "country",          limit: 15
    t.integer  "pin",              limit: 4
    t.text     "rating",           limit: 65535
    t.string   "logo",             limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",       limit: 50
    t.string   "password",    limit: 30
    t.string   "profile_img", limit: 255
    t.boolean  "isa_agent"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
