class Champion < ActiveRecord::Base
  has_many :abilities, as: :abilitable

  has_attached_file :loadingart, :styles => { :medium => "308x560>" } 
  validates_attachment_content_type :loadingart, :content_type => /\Aimage\/.*\Z/

end
