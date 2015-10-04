class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :name
    	t.string :model_link
    	t.text :description
    	t.references :category

      t.timestamps null: false
    end
  end
end
