# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all()
Account.destroy_all()

user_one = User.create!({email: '123@gmail.com', password: 'password', password_confirmation: 'password'})
user_two = User.create!({email: 'abc@gmail.com', password: 'password', password_confirmation: 'password'})




user_one.accounts= Account.create!({category: "local", amount: 150.00, user_id: 1})

user_one.accounts= Account.create!({category: "local", amount: 150.00, user_id: 1})
user_two.accounts= Account.create!({category: "offshore", amount: 380.00, user_id: 2})
user_two.accounts= Account.create!({category: "local", amount: 1.00, user_id: 2})
user_three.accounts = Account.create!({category: "offshore", amount: 15.00, user_id: 3})



