# == Schema Information
#
# Table name: projects
#
#  id         :bigint           not null, primary key
#  link       :string
#  subtitle   :text
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  section_id :bigint           not null
#
# Indexes
#
#  index_projects_on_section_id  (section_id)
#
# Foreign Keys
#
#  fk_rails_...  (section_id => sections.id)
#
FactoryBot.define do
  factory :project do
    
  end
end
