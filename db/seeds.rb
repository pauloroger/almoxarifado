# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
	{id: 1, login: 'admin', password: 'admin'}
	# {id: 2, login: 'teste', password: 'teste'}
])

# Material.create([
# 	{id: 1, name: 'Material Seed 1'},
# 	{id: 2, name: 'Material Seed 2'}
# ])

# Stock.create([
# 	{id: 1, amount: 20, action: 0, material_id: 1, user_id: 1},
# 	{id: 2, amount: 10, action: 0, material_id: 2, user_id: 2},
# 	{id: 3, amount: 5, action: 0, material_id: 2, user_id: 2}
# ])
