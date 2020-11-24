class AddFieldToVersion < ActiveRecord::Migration[6.0]
  def change
    add_column :versions, :changelog, :text
  end
end
