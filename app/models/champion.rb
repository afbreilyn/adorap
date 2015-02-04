#  create_table "champions", force: true do |t|
#    t.string   "name"
#    t.text     "lore"
#    t.datetime "created_at"
#    t.datetime "updated_at"
#    t.string   "loadingart_file_name"
#    t.string   "loadingart_content_type"
#    t.integer  "loadingart_file_size"
#    t.datetime "loadingart_updated_at"
#    t.string   "primary_damage_type"
#  end

class Champion < ActiveRecord::Base
  has_many :abilities, as: :abilitable

  has_attached_file :loadingart, :styles => { :medium => "308x560>", :small => "154x280" } 
  validates_attachment_content_type :loadingart, :content_type => /\Aimage\/.*\Z/

end
