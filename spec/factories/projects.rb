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
FactoryBot.define do
  factory :project do
    
  end
end
