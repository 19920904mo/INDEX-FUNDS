class CreateKnowledgegenres < ActiveRecord::Migration[5.2]
  def change
    create_table :knowledgegenres do |t|
      t.text :name
      t.text :memo

      t.timestamps
    end
  end
end
