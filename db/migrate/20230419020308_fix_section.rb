class FixSection < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :section, null: false, foreign_key: true
    remove_reference :sections, :projects, null: false, foreign_key: true
    remove_reference :sections, :project, null: false, foreign_key: true
  end
end
