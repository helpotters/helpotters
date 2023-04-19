class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      require 'pry'
      binding.pry
      t.string :title

      t.timestamps
    end
  end
end
