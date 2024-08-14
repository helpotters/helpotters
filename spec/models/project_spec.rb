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
require 'rails_helper'

RSpec.describe Project, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
