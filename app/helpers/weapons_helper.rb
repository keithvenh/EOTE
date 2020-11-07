module WeaponsHelper

    def parse_specials(weapon)
        specs = weapon.specials.split(';')
        special_display = "<div class='weapon-specials'>"

        specs.each do |spec|
            sp = spec.split(':')
            spec_display = "<p>#{sp[0]}"
            if sp[1]
                spec_display += " <b>#{sp[1]}</b>"
            end
            spec_display += "</p>"

            special_display += spec_display
        end

        special_display += "</div>"

        return special_display.html_safe
    end
end
