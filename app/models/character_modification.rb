class CharacterModification < ApplicationRecord
  belongs_to :character
  belongs_to :modification
end
