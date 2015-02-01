class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string :name
      t.text :lore

      t.timestamps
    end
  end
end
