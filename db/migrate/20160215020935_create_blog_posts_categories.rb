class CreateBlogPostsCategories < ActiveRecord::Migration
  def change
    create_table :blog_posts_categories do |t|
      t.belongs_to :blog_post, index: true
      t.belongs_to :category, index: true
    end
  end
end
