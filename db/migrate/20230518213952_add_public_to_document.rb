class AddPublicToDocument < ActiveRecord::Migration[6.1]
  def change
    add_column :documents, :public, :boolean
  end
end
