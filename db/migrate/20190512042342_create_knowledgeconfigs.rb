class CreateKnowledgeconfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :knowledgeconfigs do |t|
      t.text :title
      t.text :subtitle
      t.text :stylename

      t.timestamps
    end
  end
end
