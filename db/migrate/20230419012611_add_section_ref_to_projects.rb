class AddSectionRefToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :section, null: false, foreign_key: true
  end
end
