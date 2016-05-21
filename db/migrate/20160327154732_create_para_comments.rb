class CreateParaComments < ActiveRecord::Migration
  def change
    create_table :para_comments do |t|
      t.text :content

      t.integer :paragraph_id
      t.integer :parent_comment_id
      t.integer :user_id
    end
  end
end
