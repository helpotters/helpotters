# == Schema Information
#
# Table name: projects
#
#  id         :bigint           not null, primary key
#  article    :text
#  end_date   :date
#  job_type   :text
#  link       :string
#  start_date :date
#  subtitle   :string           not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  section_id :integer          not null
#
FactoryBot.define do
  factory :project do
    
  end
end
