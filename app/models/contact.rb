class Contact < ApplicationRecord
  belongs_to :character
  belongs_to :planet

  scope :alphabetical, -> { includes(:character).order('characters.name') }
end
