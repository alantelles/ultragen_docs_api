class AddFieldsToTopic < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :slug, :string
    add_column :topics, :metadata, :text
  end
end
