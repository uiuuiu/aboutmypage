class CreatePostStyles < ActiveRecord::Migration
  def change
    create_table :post_styles do |t|
      t.string :name
      t.text :description
      t.string :codename
      t.timestamps null: false
    end
  end
end
