# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed data for Work Experience
experience = Section.create(title: "Work Experience")

project1 = Project.create(title: "avohq.io", subtitle: "Contract", link: "avohq.io", section_id: experience.id)
project1_description = Field.create(project_id: project1.id, title: "Contribution", body: "Added a GPS coordinates display via the Mapbox API")

project2 = Project.create(title: "AdsInsights", subtitle: "Consultant", link: "", section_id: experience.id)
project2_description = Field.create(project_id: project2.id, title: "Consultation", body: "Assisted a dev team with upgrading their Ruby on Rails app and taught lead dev about the pros and cons of different approaches to the asset pipeline.")

project3 = Project.create(title: "Fly.io", subtitle: "Contribution", link: "", section_id: experience.id)
project3_description = Field.create(project_id: project3.id, title: "Contribution", body: "Coded the Rails-API detection feature on their flyctl commandline deployment tool.")
project3_context = Field.create(project_id: project3.id, title: "Context", body: "This was an unpaid role, but this feature is running in production.")

project4 = Project.create(title: "Rechated", subtitle: "Freelancer", link: "", section_id: experience.id)
project4_description = Field.create(project_id: project4.id, title: "Contribution", body: "Hired as a frontend developer in an early-stage startup. Prototyped landing page designs in Figma and implemented them in TailwindCSS. Also worked on creating an admin dashboard for interacting with OpenAI processes.")

# Seed data for Personal Projects
personal_projects = Section.create(title: "Personal Projects")

project5 = Project.create(title: "whenarewefree", subtitle: "Active", link: "", section_id: personal_projects.id)
project5_description = Field.create(project_id: project5.id, title: "TLDR", body: "A scheduling site for friend-groups. Notifies users what day everyone is free.")
project5_tech_used = Field.create(project_id: project5.id, title: "Tech used", body: "Ruby/Rails, Figma, Turbo, Stimulus")

project6 = Project.create(title: "BLACKPINK", subtitle: "Inactive", link: "", section_id: personal_projects.id)
project6_description = Field.create(project_id: project6.id, title: "TLDR", body: "Ticketmaster-partnered Kpop fansite that locates the nearest venue BLACKPINK is performing.")
project6_tech_used = Field.create(project_id: project6.id, title: "Tech used", body: "Ruby/Rails, Figma, Turbo, Stimulus, AnimeJS, GraphQL")

# Seed data for Articles
articles = Section.create(title: "Articles")

article1 = Project.create(title: "ON/OFF | Toggling Features on Rails", subtitle: "Commission", link: "https://helpotters.medium.com/on-off-toggling-features-on-rails-e222f93dc454", section_id: articles.id)
article2 = Project.create(title: "Enabling Server Ping", subtitle: "Take Home Exam", link: "https://helpotters.medium.com/as-fast-as-our-users-how-to-make-a-lag-meter-bdc376907c68", section_id: articles.id)
