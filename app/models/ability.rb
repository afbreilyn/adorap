class Ability < ActiveRecord::Base
  belongs_to :abilitable, polymorphic: true
end
