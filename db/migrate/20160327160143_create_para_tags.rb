class CreateParaTags < ActiveRecord::Migration
  def change
    create_table :para_tags do |t|
      t.string :name
      t.text :description
    end
  end
end
