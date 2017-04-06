User.create!(name:  "Vlad Ivashchenko",
             email: "vladviva16@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
