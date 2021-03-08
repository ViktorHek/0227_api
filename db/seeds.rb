# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "example@email.com", password: "password", password_confirmation: "password")

Product.create(title:"En sko", description: "En förklaring av vad produkten är. kan också användas som en text som kompleterar produkten.")
Product.create(title:"En Förklaring", description: "En Product behöver inte vara en produkt utan kan vara ett medelande, post, bild eller lite vad som.")
Product.create(title:"En till product", description: "Denna gång med en mindre förklaring")