class AddDefaultToDocEntry < ActiveRecord::Migration[6.0]
  def change
    change_column_default :doc_entries, :language_id, default: 1
  end
end
