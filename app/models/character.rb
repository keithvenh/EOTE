class Character < ApplicationRecord
    has_many :character_weapons
    has_many :character_armors
    has_many :character_equipment
    has_many :character_modifications
    has_many :skills
    has_one :character_stat
    has_one :contact
end
