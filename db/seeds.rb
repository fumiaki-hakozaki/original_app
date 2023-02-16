# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    User.create!([{ name:"レブロン", email:"sample_4@example.com", password: "123456" , admin: true}])

    # ゲストユーザー
@user = User.create!(
  name: 'ゲスト',
  email: 'guest@example.com',
  password: SecureRandom.urlsafe_base64
)

# ゲスト管理者ユーザー
@admin_user = User.create!(
  name: 'ゲスト管理者',
  email: 'admin@example.com',
  password: SecureRandom.urlsafe_base64,
  admin: true
)

