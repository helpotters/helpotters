# == Schema Information
#
# Table name: admins
#
#  id                     :bigint           not null, primary key
#  approved               :boolean          default(FALSE), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  ahoy_visit_id          :bigint
#
# Indexes
#
#  index_admins_on_ahoy_visit_id         (ahoy_visit_id)
#  index_admins_on_approved              (approved)
#  index_admins_on_email                 (email) UNIQUE
#  index_admins_on_reset_password_token  (reset_password_token) UNIQUE
#
class Admin < ApplicationRecord
  visitable :ahoy_visit
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    approved? ? super : :not_approved
  end
end
