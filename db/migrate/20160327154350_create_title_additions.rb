class CreateTitleAdditions < ActiveRecord::Migration
  def change
    create_table :title_additions do |t|
      t.text :content
      t.integer :para_title_id
      t.integer :show_type_id
    end
  end
end
