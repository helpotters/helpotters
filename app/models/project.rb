# == Schema Information
#
# Table name: projects
#
#  id         :bigint           not null, primary key
#  link       :string
#  title      :string           not null
#  type       :string
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
class Project < ApplicationRecord
end
