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

ActiveRecord::Schema.define(version: 20170927034023) do

  create_table "applications", force: :cascade do |t|
    t.integer  "job_seeker_id", limit: 4
    t.integer  "vacancy_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applications", ["job_seeker_id"], name: "index_applications_on_job_seeker_id", using: :btree
  add_index "applications", ["vacancy_id"], name: "index_applications_on_vacancy_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.text     "description",    limit: 65535
    t.string   "website",        limit: 255
    t.text     "address",        limit: 65535
    t.string   "country",        limit: 255
    t.integer  "bussiness_type", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", force: :cascade do |t|
    t.string   "history_type",  limit: 255
    t.text     "title",         limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "job_seeker_id", limit: 4
  end

  add_index "histories", ["job_seeker_id"], name: "index_histories_on_job_seeker_id", using: :btree

  create_table "job_seekers", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.string   "skills",             limit: 255
    t.float    "expected_sal",       limit: 24
    t.string   "expected_locations", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "job_seekers", ["user_id"], name: "fk_rails_7c37d45b07", using: :btree

  create_table "matches", force: :cascade do |t|
    t.integer  "job_seeker_id", limit: 4
    t.integer  "vacancy_id",    limit: 4
    t.float    "ratio",         limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["job_seeker_id"], name: "index_matches_on_job_seeker_id", using: :btree
  add_index "matches", ["vacancy_id"], name: "index_matches_on_vacancy_id", using: :btree

  create_table "recruiters", force: :cascade do |t|
    t.integer  "contract_id", limit: 4
    t.string   "password",    limit: 255
    t.string   "email",       limit: 255
    t.string   "phone",       limit: 255
    t.integer  "company_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recruiters", ["company_id"], name: "index_recruiters_on_company_id", using: :btree

  create_table "user_emails", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "email",      limit: 255
    t.boolean  "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_emails", ["user_id"], name: "index_user_emails_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vacancies", force: :cascade do |t|
    t.string   "job_title",       limit: 255
    t.text     "job_summary",     limit: 65535
    t.string   "job_type",        limit: 255
    t.float    "min_sal",         limit: 24
    t.float    "max_sal",         limit: 24
    t.string   "deal_line",       limit: 255
    t.text     "expected_skills", limit: 65535
    t.string   "locations",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "applications", "job_seekers"
  add_foreign_key "applications", "vacancies"
  add_foreign_key "histories", "job_seekers"
  add_foreign_key "job_seekers", "users"
  add_foreign_key "matches", "job_seekers"
  add_foreign_key "matches", "vacancies"
  add_foreign_key "recruiters", "companies"
  add_foreign_key "user_emails", "users"
end
