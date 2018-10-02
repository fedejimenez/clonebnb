class CreatePgSearchDocuments < ActiveRecord::Migration[5.2]
  def change
    say_with_time("Creating table for pg_search multisearch") do
      create_table :pg_search_documents do |t|
        t.text :content
        t.belongs_to :searchable, :polymorphic => true, :index => true
        t.timestamps null: false
      end
    end
  end
end
