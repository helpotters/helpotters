# frozen_string_literal: true

class AddDatesToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :start_date, :date
    add_column :projects, :end_date, :date
  end
end
