class Champion < ActiveRecord::Base
  has_many :abilities, as: :abilitable
end
