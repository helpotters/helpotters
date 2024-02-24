# == Schema Information
#
# Table name: projects
#
#  id         :bigint           not null, primary key
#  article    :text
#  company    :string           not null
#  end_date   :date
#  job_title  :string           not null
#  job_type   :text
#  link       :string
#  start_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  section_id :integer          not null
#
class Project < ApplicationRecord
  has_many_attached :images
  has_one_attached :thumbnail
  validates :company, :job_title, :section_id, presence: true

  belongs_to :section, touch: true
  has_many :fields
end
