class AddTitleToDocEntry < ActiveRecord::Migration[6.0]
  def change
    add_column :doc_entries, :title, :string
  end
end
