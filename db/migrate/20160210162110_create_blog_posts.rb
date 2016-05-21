class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.integer :user_id, null: false
      t.integer :category_id, null: false
      t.timestamps null: false
    end
  end
end
