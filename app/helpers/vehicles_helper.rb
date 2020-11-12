module VehiclesHelper

    def parse_complement(ship)
        com = ship.complement.split(";")

        com_display = "<div class='complement'>"

        com.each do |c|
            com_type = c.split(':')
            com_display += "<p> <span class='integer'>#{com_type[0]}</span> :: #{com_type[1]}</p>"
        end

        com_display += "</div>"

        return com_display.html_safe
    end

    def parse_hyperdrive(ship)
        pri = ship.primary_hyperdrive
        sec = ship.secondary_hyperdrive

        hyper_display = "<p class='data'>"
        if !pri
            hyper_display += "None"
        end

        if pri
            hyper_display += "Class <span class='integer'>#{pri}</span>"
        end

        if sec
            hyper_display += " / Class <span class='integer'>#{sec}</span>"
        end

        hyper_display += "</p>"
        return hyper_display.html_safe


    end
end
