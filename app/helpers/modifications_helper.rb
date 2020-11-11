module ModificationsHelper

    def parse_brands(mod)
        brands = mod.brands.split(';')

        display = "<div class='brands'>"

        brands.each do |brand|
            display += translate(brand, "translate-sm")
        end

        display += "</div"

        return display.html_safe
    end

    def parse_base_modifiers(mod)
        mods = mod.base_modifiers.split(';')

        display = "<div class='base-modifiers'>"

        mods.each do |mod|
            display += "<p>#{mod}</p>"
        end

        display += "</div>"

        return display.html_safe
    end

    def parse_mod_options(mod)
        mods = mod.mod_options.split(';')
        
        display = "<div class='mod-options'>"

        mods.each do |mod|
            num = mod.split(':')[0]
            qual = mod.split(':')[1].split('-')[0]
            desc = mod.split('-')[1]
            append = ''
            if desc && desc != ''
                append = ":: #{desc}"
            end

            display += "<p><b>#{num}</b> :: #{qual} #{append}</p>"
        end

        display += "</div>"

        return display.html_safe

    end
end
