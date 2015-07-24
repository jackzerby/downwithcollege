class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.text :caption
      t.text :description
      t.string :category
      t.string :subcategory
      t.string :thumb 
      t.timestamps
    end
  end
end
