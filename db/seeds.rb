# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
barbara = User.create(name:'barbara', username: 'bkuofie', image: '' email: 'bkuofie@yahoo.com', password:'12345')

painting = Category.create( title:'Painting', description:' An image (artwork) created using pigments (color) on a surface (ground) such as paper or canvas')
architecture = Category.create(title: 'Architecture', description:'Buildings and other physical structures. ')
statue = Category.create(title: 'Statue', description:'A three-dimensional representation usually of a person, animal, or mythical being that is produced by sculpturing, modeling, or casting')
