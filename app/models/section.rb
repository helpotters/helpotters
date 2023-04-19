# == Schema Information
#
# Table name: sections
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Section < ApplicationRecord
  validates :title, presence: true

  has_many :projects
end
