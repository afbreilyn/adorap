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
#    t.string   "thumbnail_file_name"
#    t.string   "thumbnail_content_type"
#    t.integer  "thumbnail_file_size"
#    t.datetime "thumbnail_updated_at"
#  end

class Champion < ActiveRecord::Base
  has_many :abilities, as: :abilitable

  has_attached_file :loadingart, :styles => { :medium => "308x560>", :small => "154x280" } 
  validates_attachment_content_type :loadingart, :content_type => /\Aimage\/.*\Z/

  has_attached_file :thumbnail, :styles => { :medium => "120x120>", :small => "60x60" } 
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
