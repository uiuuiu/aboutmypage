class CreateParaTitles < ActiveRecord::Migration
  def change
    create_table :para_titles do |t|
      t.text :content
      t.integer :paragraph_id
    end
  end
end
