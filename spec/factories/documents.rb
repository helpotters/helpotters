# == Schema Information
#
# Table name: documents
#
#  id         :bigint           not null, primary key
#  name       :string
#  public     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :document do
    name { "MyString" }
  end
end
