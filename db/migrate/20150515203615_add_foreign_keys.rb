#Created by Victor
class AddForeignKeys < ActiveRecord::Migration
  def change
    #adds the foreign keys for all models

    #users
    add_foreign_key :users, :logins
    add_foreign_key :users, :companies

    #user_phones
    add_foreign_key :user_phones, :users

    #undergraduate_degrees
    add_foreign_key :undergraduate_degrees, :users
    add_foreign_key :undergraduate_degrees, :degrees
    add_foreign_key :undergraduate_degrees, :colleges

    #graduate_degrees
    add_foreign_key :graduate_degrees, :users
    add_foreign_key :graduate_degrees, :degrees
    add_foreign_key :graduate_degrees, :colleges

    #saved_lists
    add_foreign_key :saved_lists, :logins

    #saved_list_users
    add_foreign_key :saved_list_users, :saved_lists
    add_foreign_key :saved_list_users, :users

    #company_infos
    add_foreign_key :company_infos, :companies

    #giving_backs
    add_foreign_key :giving_backs, :users
    add_foreign_key :giving_backs, :companies

    #surveys
    add_foreign_key :surveys, :logins

    #survey_questions
    add_foreign_key :survey_questions, :surveys

    #survey_question_options
    add_foreign_key :survey_question_options, :survey_questions

    #user_surveys
    add_foreign_key :user_surveys, :users
    add_foreign_key :user_surveys, :surveys

    #user_survey_responses
    add_foreign_key :user_survey_responses, :user_surveys
    add_foreign_key :user_survey_responses, :survey_questions
    add_foreign_key :user_survey_responses, :survey_question_options
    add_foreign_key :user_survey_responses, :survey_question_options_choices

    #survey_question_options_choices
    add_foreign_key :survey_question_options_choices, :survey_questions
  end

end
