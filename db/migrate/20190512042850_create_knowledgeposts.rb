class CreateKnowledgeposts < ActiveRecord::Migration[5.2]
  def change
    create_table :knowledgeposts do |t|
      t.text :title
      t.text :read
      t.text :read
      t.text :content
      t.integer :knowledgegenre_id

      t.timestamps
    end
  end
end
