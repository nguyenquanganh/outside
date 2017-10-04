User.create!(first_name: "Admin",
  last_name: ".",
  email: "admin@gmail.com",
  password: "admin1",
  password_confirmation: "admin1",
  admin: true,
  activated: true,
  activated_at: Time.zone.now)

