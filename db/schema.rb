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

ActiveRecord::Schema.define(version: 20150511220208) do

  create_table "companies", force: :cascade do |t|
    t.string   "company_name", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "company_infos", force: :cascade do |t|
    t.integer  "company_id_id", limit: 4
    t.string   "street",        limit: 255
    t.string   "city",          limit: 255
    t.string   "state",         limit: 255
    t.integer  "zip",           limit: 4
    t.integer  "country_code",  limit: 4
    t.integer  "area_code",     limit: 4
    t.string   "prefix",        limit: 255
    t.string   "suffix",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "company_infos", ["company_id_id"], name: "index_company_infos_on_company_id_id", using: :btree

  create_table "giving_backs", force: :cascade do |t|
    t.integer  "user_id_id",         limit: 4
    t.integer  "company_id_id",      limit: 4
    t.string   "subject",            limit: 255
    t.string   "position",           limit: 255
    t.text     "description",        limit: 65535
    t.text     "requirements",       limit: 65535
    t.boolean  "approved",           limit: 1
    t.boolean  "completed",          limit: 1
    t.string   "type",               limit: 255
    t.string   "contact_first_name", limit: 255
    t.string   "contact_last_name",  limit: 255
    t.string   "contact_email",      limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "giving_backs", ["company_id_id"], name: "index_giving_backs_on_company_id_id", using: :btree
  add_index "giving_backs", ["user_id_id"], name: "index_giving_backs_on_user_id_id", using: :btree

  create_table "logins", force: :cascade do |t|
    t.string   "First_name", limit: 255
    t.string   "mi",         limit: 255
    t.string   "Last_name",  limit: 255
    t.string   "User_name",  limit: 255
    t.string   "Password",   limit: 255
    t.string   "Type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "survey_question_options", force: :cascade do |t|
    t.integer  "survey_question_id_id", limit: 4
    t.integer  "display_order",         limit: 4
    t.text     "text",                  limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "survey_question_options", ["survey_question_id_id"], name: "index_survey_question_options_on_survey_question_id_id", using: :btree

  create_table "survey_question_options_choices", force: :cascade do |t|
    t.integer  "survey_question_id_id", limit: 4
    t.integer  "display_order",         limit: 4
    t.text     "text",                  limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "survey_question_options_choices", ["survey_question_id_id"], name: "index_survey_question_options_choices_on_survey_question_id_id", using: :btree

  create_table "survey_questions", force: :cascade do |t|
    t.integer  "survey_id_id",  limit: 4
    t.string   "type",          limit: 255
    t.integer  "display_order", limit: 4
    t.text     "text",          limit: 65535
    t.boolean  "required",      limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "survey_questions", ["survey_id_id"], name: "index_survey_questions_on_survey_id_id", using: :btree

  create_table "surveys", force: :cascade do |t|
    t.string   "survey_name",        limit: 255
    t.text     "survey_description", limit: 65535
    t.date     "date_created"
    t.string   "status",             limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "user_survey_responses", force: :cascade do |t|
    t.integer  "user_survey_id_id",                limit: 4
    t.integer  "survey_question_id_id",            limit: 4
    t.integer  "survey_question_option_id_id",     limit: 4
    t.integer  "user_survey_option_choices_id_id", limit: 4
    t.text     "response_text",                    limit: 65535
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "user_survey_responses", ["survey_question_id_id"], name: "index_user_survey_responses_on_survey_question_id_id", using: :btree
  add_index "user_survey_responses", ["survey_question_option_id_id"], name: "index_user_survey_responses_on_survey_question_option_id_id", using: :btree
  add_index "user_survey_responses", ["user_survey_id_id"], name: "index_user_survey_responses_on_user_survey_id_id", using: :btree
  add_index "user_survey_responses", ["user_survey_option_choices_id_id"], name: "index_user_survey_responses_on_user_survey_option_choices_id_id", using: :btree

  create_table "user_surveys", force: :cascade do |t|
    t.integer  "user_id_id",     limit: 4
    t.integer  "survey_id_id",   limit: 4
    t.date     "date_completed"
    t.boolean  "anonymous",      limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "user_surveys", ["survey_id_id"], name: "index_user_surveys_on_survey_id_id", using: :btree
  add_index "user_surveys", ["user_id_id"], name: "index_user_surveys_on_user_id_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "First_name", limit: 255
    t.string   "mi",         limit: 255
    t.string   "Last_name",  limit: 255
    t.string   "User_name",  limit: 255
    t.string   "Password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
