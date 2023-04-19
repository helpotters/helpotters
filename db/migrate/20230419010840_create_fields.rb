class CreateFields < ActiveRecord::Migration[6.1]
  def change
    create_table :fields do |t|
      t.string :title
      t.string :body
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
