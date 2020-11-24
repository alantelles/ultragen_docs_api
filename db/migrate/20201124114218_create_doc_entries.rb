class CreateDocEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :doc_entries do |t|
      t.references :language, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true
      t.references :version, null: false, foreign_key: true
      t.string :abstract, limit: 255
      t.text :content
      t.integer :chapter
      t.integer :old_topic_autoref
      t.integer :old_doc_autoref

      t.timestamps
    end
  end
end
