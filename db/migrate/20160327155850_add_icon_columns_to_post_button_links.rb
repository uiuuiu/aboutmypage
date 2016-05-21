class AddIconColumnsToPostButtonLinks < ActiveRecord::Migration
  def up
    add_attachment :post_button_links, :icon
  end

  def down
    remove_attachment :post_button_links, :icon
  end
end
