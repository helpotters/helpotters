class AddArticleToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :article, :text
  end
end
