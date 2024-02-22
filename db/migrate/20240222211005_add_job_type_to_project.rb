class AddJobTypeToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :job_type, :text
  end
end
