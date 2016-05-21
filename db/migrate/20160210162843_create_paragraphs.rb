class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.text :content
      t.integer :blog_post_id
      t.integer :post_style_id

      t.timestamps null: false
    end
  end
end
