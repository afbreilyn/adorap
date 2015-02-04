class AddPrimaryDamageTypeToChampions < ActiveRecord::Migration
  def change
    add_column :champions, :primary_damage_type, :string
  end
end
