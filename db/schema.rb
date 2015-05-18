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

ActiveRecord::Schema.define(version: 20150518003408) do

  create_table "colleges", force: :cascade do |t|
    t.string   "college_name", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

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

  create_table "degrees", force: :cascade do |t|
    t.string   "major_name", limit: 255
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

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

  create_table "graduate_degrees", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.integer  "degree_id",       limit: 4
    t.integer  "college_id",      limit: 4
    t.date     "graduation_date"
    t.string   "status",          limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "graduate_degrees", ["college_id"], name: "index_graduate_degrees_on_college_id", using: :btree
  add_index "graduate_degrees", ["degree_id"], name: "index_graduate_degrees_on_degree_id", using: :btree
  add_index "graduate_degrees", ["user_id"], name: "index_graduate_degrees_on_user_id", using: :btree

  create_table "logins", force: :cascade do |t|
    t.string   "username",               limit: 255
    t.string   "password",               limit: 255
    t.string   "first_name",             limit: 255
    t.string   "middle_initial",         limit: 255
    t.string   "last_name",              limit: 255
    t.string   "type",                   limit: 255
    t.datetime "last_login_timestamp"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
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
  end

  add_index "logins", ["email"], name: "index_logins_on_email", unique: true, using: :btree
  add_index "logins", ["reset_password_token"], name: "index_logins_on_reset_password_token", unique: true, using: :btree

  create_table "saved_list_users", force: :cascade do |t|
    t.integer  "saved_list_id", limit: 4
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "saved_list_users", ["saved_list_id"], name: "index_saved_list_users_on_saved_list_id", using: :btree
  add_index "saved_list_users", ["user_id"], name: "index_saved_list_users_on_user_id", using: :btree

  create_table "saved_lists", force: :cascade do |t|
    t.integer  "login_id",        limit: 4
    t.string   "list_name",       limit: 255
    t.boolean  "saved_user_list", limit: 1
    t.date     "date_saved"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "saved_lists", ["login_id"], name: "index_saved_lists_on_login_id", using: :btree

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

  create_table "undergraduate_degrees", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.integer  "college_id",      limit: 4
    t.integer  "degree_id",       limit: 4
    t.date     "graduation_date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "undergraduate_degrees", ["college_id"], name: "index_undergraduate_degrees_on_college_id", using: :btree
  add_index "undergraduate_degrees", ["degree_id"], name: "index_undergraduate_degrees_on_degree_id", using: :btree
  add_index "undergraduate_degrees", ["user_id"], name: "index_undergraduate_degrees_on_user_id", using: :btree

  create_table "user_phones", force: :cascade do |t|
    t.integer  "country_code", limit: 4
    t.integer  "area_code",    limit: 4
    t.integer  "prefix",       limit: 4
    t.integer  "suffix",       limit: 4
    t.integer  "extension",    limit: 4
    t.string   "type",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
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
    t.integer  "login_id",              limit: 4
    t.integer  "company_id",            limit: 4
    t.string   "email_addr",            limit: 255
    t.string   "street",                limit: 255
    t.string   "city",                  limit: 255
    t.string   "state",                 limit: 255
    t.integer  "zip",                   limit: 4
    t.string   "first_name",            limit: 255
    t.string   "middle_initial",        limit: 255
    t.string   "last_name",             limit: 255
    t.string   "spouse_first_name",     limit: 255
    t.string   "spouse_middle_initial", limit: 255
    t.string   "spouse_last_name",      limit: 255
    t.integer  "number_children",       limit: 4
    t.integer  "birth_month",           limit: 4
    t.integer  "birth_day",             limit: 4
    t.integer  "birth_year",            limit: 4
    t.string   "ethnicity",             limit: 255
    t.boolean  "general_opt_in",        limit: 1
    t.boolean  "email_opt_in",          limit: 1
    t.boolean  "phone_opt_in",          limit: 1
    t.boolean  "badges_opt_in",         limit: 1
    t.string   "status",                limit: 255
    t.string   "salary_range",          limit: 255
    t.string   "job_title",             limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "searchable",            limit: 1
    t.string   "subscription_type",     limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["login_id"], name: "index_users_on_login_id", using: :btree

end
