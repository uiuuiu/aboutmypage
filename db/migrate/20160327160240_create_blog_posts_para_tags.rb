class CreateBlogPostsParaTags < ActiveRecord::Migration
  def change
    create_table :blog_posts_para_tags do |t|
      t.belongs_to :blog_post, index: true
      t.belongs_to :para_tag, index: true
    end
  end
end
