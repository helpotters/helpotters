# == Schema Information
#
# Table name: sections
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe Section, type: :model do
  it { is_expected.to validate(:title) }
  it { is_expected.to have_many(:projects) }
end
