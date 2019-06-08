class Knowledge < ActiveRecord::Migration[5.2]
  def change
    drop_table :knowledges
  end
end
