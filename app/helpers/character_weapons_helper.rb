module CharacterWeaponsHelper

    def get_brands(item)
        return item.brands.split(';')
    end
end
