class CreateParaContents < ActiveRecord::Migration
  def change
    create_table :para_contents do |t|
      t.text :content 
      t.integer :paragraph_id
    end
  end
end
