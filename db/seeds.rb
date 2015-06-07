#Created by Tessa

Login.destroy_all
Login.create!([
  {username: "wwworker", first_name: "worker", middle_initial: "w", last_name: "worker", type: 0, email: "worker@mail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {username: "aaadmin", first_name: "admin", middle_initial: "a", last_name: "admin", type: 1, email: "admin@mail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {username: "uuuser", first_name: "user", middle_initial: "u", last_name: "user", type: 2, email: "user@mail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Survey.destroy_all
Survey.create!([
  {login_id: nil, survey_name: "Test Survey_1", survey_description: "Test Survey_1", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_2", survey_description: "Test Survey_2", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_3", survey_description: "Test Survey_3", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_4", survey_description: "Test Survey_4", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_5", survey_description: "Test Survey_5", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_6", survey_description: "Test Survey_6", date_created: nil, status: nil}
])
User.destroy_all
User.create!([
  {login_id: 1, company_id: nil, street: "123 Front St", city: "Naperville", state: "IL", zip: 60504,  spouse_first_name: nil, spouse_middle_initial: nil, spouse_last_name: nil, number_children: nil, birth_month: 0, birth_day: nil, birth_year: nil, ethnicity: nil, general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil},
  {login_id: 2, company_id: nil,  street: "345 Circle Dr", city: "Wheaton", state: "IL", zip: 60538,  spouse_first_name: nil, spouse_middle_initial: nil, spouse_last_name: nil, number_children: nil, birth_month: 0, birth_day: nil, birth_year: nil, ethnicity: nil, general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil},
  {login_id: 3, company_id: nil,  street: "11212 Jefferson", city: "Sugar Grove", state: "IL", zip: 60554,  spouse_first_name: nil, spouse_middle_initial: nil, spouse_last_name: nil, number_children: nil, birth_month: 0, birth_day: nil, birth_year: nil, ethnicity: nil, general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil}
])

GivingBack.destroy_all
GivingBack.create!([
  {user_id: nil, company_id: nil, subject: "Guest Speaker", position: "QA", description: "I'd like to be a guest speaker", requirements: nil, approved: false, completed: false, type: 2, contact_first_name: "John", contact_last_name: "Doe", contact_email: "johndoe@gmail.com", hidden: false},
  {user_id: nil, company_id: nil, subject: "Tutor", position: "Tutor", description: "I'd like to tutor", requirements: nil, approved: false, completed: false, type: 1, contact_first_name: "Michael", contact_last_name: "Fassbender", contact_email: "michaelfassbender@yahoo.com", hidden: false}
])
