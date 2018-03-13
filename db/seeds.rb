# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
OraclePaymentData.delete_all

OraclePaymentData.create!([
  {id: 1, acct_num: "5123456", active: true},
  {id: 2, acct_num: "5123457", active: true},
  {id: 3, acct_num: "5123458", active: true},
  {id: 4, acct_num: "5123459", active: false}
  ])
