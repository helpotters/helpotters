# == Schema Information
#
# Table name: projects
#
#  id         :bigint           not null, primary key
#  article    :text
#  end_date   :date
#  link       :string
#  start_date :date
#  subtitle   :string           not null
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
class Project < ApplicationRecord
  has_many_attached :images
  has_one_attached :thumbnail
  validates :title, :subtitle, :section_id, presence: true

  belongs_to :section, touch: true
  has_many :fields
end
