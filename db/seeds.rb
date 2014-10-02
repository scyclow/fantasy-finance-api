# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user1 = User.create!(username:'steve', 
										  password_digest: "password", 
										  # password_confirmation: "password", 
										  email:'steve@steve.com')

@league = League.create!(name:'investing',
												 commissioner: @user1)

@portfolio1 = Portfolio.create!(name:'portfolio',
																user: @user1,
																league_id: @league.id)