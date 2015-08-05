class CreateTables < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.text :caption
      t.text :description
      t.string :thumb 
      t.string :slug
      t.timestamps
    end
    
    create_table :episodes do |t|
      t.string :title
      t.text :caption
      t.text :description
      t.string :thumb
      t.string :media
      t.string :slug
      t.integer :program_id
      t.timestamps
    end
    
    create_table :trainings do |t|
      t.string :title
      t.text :caption
      t.text :description
      t.string :thumb
      t.string :slug
      t.timestamps
    end
    
    add_index :programs, :slug
    add_index :episodes, :slug
    
    add_foreign_key :episodes, :programs, column: 'program_id'
      
  end
end
