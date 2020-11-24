class AddFieldToVersions < ActiveRecord::Migration[6.0]
  def change
    add_column :versions, :github_tag, :string
  end
end
