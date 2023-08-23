class AddAhoyVisitToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_reference :admins, :ahoy_visit
  end
end
