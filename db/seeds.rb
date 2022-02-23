# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create([
                { first_name: 'Isaac', last_name: 'Asimov', year_of_birth: 1920, is_alive: false },
                { first_name: 'Joanne', last_name: 'Rowling', year_of_birth: 1965, is_alive: true },
                { first_name: 'Antoine', last_name: 'de Saint-Exupery', year_of_birth: 1900, is_alive: false },
                { first_name: 'James', last_name: 'Joyce', year_of_birth: 1882, is_alive: false },
                { first_name: 'George', last_name: 'Orwell', year_of_birth: 1903, is_alive: false },
                { first_name: 'Winston', last_name: 'Groom', year_of_birth: 1943, is_alive: false }
              ])
