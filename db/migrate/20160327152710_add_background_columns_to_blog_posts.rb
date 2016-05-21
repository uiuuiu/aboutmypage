class AddBackgroundColumnsToBlogPosts < ActiveRecord::Migration
  def up
    add_attachment :blog_posts, :background
  end

  def down
    remove_attachment :blog_posts, :background
  end
end
