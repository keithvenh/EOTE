module CharacterWeaponsHelper

    def get_brands(weapon)
        return weapon.brands.split(';')
    end
end
