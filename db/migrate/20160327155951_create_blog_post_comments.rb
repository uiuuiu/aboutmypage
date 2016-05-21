class CreateBlogPostComments < ActiveRecord::Migration
  def change
    create_table :blog_post_comments do |t|
      t.text :content

      t.integer :blog_post_id
      t.integer :user_id
      t.integer :parent_comment_id
    end
  end
end
