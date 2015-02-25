class CreateItemTypes < ActiveRecord::Migration
  def change
        create_table :item_types do |t|
    	t.string :name
    	t.timestamps null: false
    end
    #add_reference :items, :item_type, index: true
  end
end
