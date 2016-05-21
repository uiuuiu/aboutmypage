class AddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :paragraphs, :blog_posts, column: 'blog_post_id'
    add_foreign_key :para_titles, :paragraphs, column: 'paragraph_id'
    add_foreign_key :title_additions, :para_titles, column: 'para_title_id'
    add_foreign_key :title_additions, :show_types, column: 'show_type_id'
    add_foreign_key :para_contents, :paragraphs, column: 'paragraph_id'
    add_foreign_key :para_comments, :paragraphs, column: 'paragraph_id'
    add_foreign_key :paragraphs, :post_styles, column: 'post_style_id'
    add_foreign_key :post_button_links, :blog_posts, column: 'blog_post_id'
    add_foreign_key :blog_post_comments, :blog_posts, column: 'blog_post_id'
  end
end
