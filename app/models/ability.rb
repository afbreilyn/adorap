#  create_table "abilities", force: true do |t|
#    t.string   "scales_from"
#    t.string   "key"
#    t.string   "name"
#    t.text     "description"
#    t.integer  "abilitable_id"
#    t.string   "abilitable_type"
#    t.datetime "created_at"
#    t.datetime "updated_at"
#  end


class Ability < ActiveRecord::Base
  belongs_to :abilitable, polymorphic: true
end
