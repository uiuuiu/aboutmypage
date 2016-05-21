class CreateShowTypes < ActiveRecord::Migration
  def change
    create_table :show_types do |t|
      t.string :name
      t.text :description
      t.string :codename
    end
  end
end
