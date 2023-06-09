# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

experience = Section.create(title: 'Work Experience')
project1 = Project.create(title: 'avohq.io', subtitle: 'Contract',
                          link: 'avohq.io', section_id: experience.id)
project1_description = Field.create(project_id: project1.id, title: 'Contribution', body:
                                   'Added a GPS coordinates display via the Mapbox API')
