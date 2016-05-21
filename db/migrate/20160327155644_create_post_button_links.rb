class CreatePostButtonLinks < ActiveRecord::Migration
  def change
    create_table :post_button_links do |t|
      t.string :color
      t.string :url

      t.integer :blog_post_id
    end
  end
end
