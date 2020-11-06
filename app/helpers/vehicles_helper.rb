module VehiclesHelper

    def parse_complement(ship)
        com = ship.complement.split(";")

        com_display = "<div class='complement'>"

        com.each do |c|
            com_type = c.split(':')
            com_display += "<p> <span class='sw'>#{com_type[1]}</span> :: #{com_type[0]}</p>"
        end

        com_display += "</div>"

        return com_display.html_safe
    end

    def parse_hyperdrive(ship)
        pri = ship.primary_hyperdrive
        sec = ship.secondary_hyperdrive

        hyper_display = "<p class='sw data'>"
        if !pri
            hyper_display = "<p class='data'>None"
        end

        if pri
            hyper_display += "#{pri}"
        end

        if sec
            hyper_display += " / #{sec}"
        end

        hyper_display += "</p>"
        return hyper_display.html_safe


    end
end
