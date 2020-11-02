class Character < ApplicationRecord
    has_many :character_weapons
    has_many :character_armors
    has_many :character_equipments
    has_many :skills
    has_one :character_stat
end
