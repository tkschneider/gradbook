Login.destroy_all
Login.create!([
  {username: "wwworker", first_name: "worker", middle_initial: "w", last_name: "worker", type: 0, email: "worker@mail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {username: "aaadmin", first_name: "admin", middle_initial: "a", last_name: "admin", type: 1, email: "admin@mail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {username: "uuuser", first_name: "user", middle_initial: "u", last_name: "user", type: 2, email: "user@mail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Survey.create!([
  {login_id: nil, survey_name: "Test Survey_1", survey_description: "Test Survey_1", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_2", survey_description: "Test Survey_2", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_3", survey_description: "Test Survey_3", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_4", survey_description: "Test Survey_4", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_5", survey_description: "Test Survey_5", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_6", survey_description: "Test Survey_6", date_created: nil, status: nil}
])
