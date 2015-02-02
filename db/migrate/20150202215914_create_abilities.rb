class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :scales_from
      t.string :key
      t.string :name
      t.text :description

      t.integer :abilitable_id
      t.string :abilitable_type
      t.timestamps
    end
  end
end
