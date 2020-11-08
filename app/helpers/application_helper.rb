module ApplicationHelper

    def translate(phrase, classNames='')
        data = "<div class='translate #{classNames}'>"
        data += "<p class='sw'>#{phrase}"
        data += "<span class='en-tip'>#{phrase}</span>"
        data += "</p></div>"
        return data.html_safe
    end

    def section_header(title)
        
        display = "<div class='section-header'>"

        display += "<p class='sw section-title'>#{title}</p>"

        display += "<p>"

        rand(6).times do
            sym = random_symbol
            display += "<span class='text-#{sym[:color]}'>#{sym[:char_code]}</span>"
        end

        display += "</p></div>"

        return display.html_safe
        
    end

    def random_symbol
        characters = [8226, 9830, 9864, 9865, 9866, 9867, 9868, 9869, 9870, 9871, 10074]
        colors = ['white', 'red', 'orange', 'yellow', 'green']

        return {color: colors[rand(colors.length)], char_code: "&##{characters[rand(characters.length)]};"}
    end

    def display_level(level, max_level=false)

        display = "<div class='level-display'>"
        i = 1
        level.times do 
            display += "<div class='level level-true level-#{i}'></div>"
            i += 1
        end
        if max_level
            (5 - level).times do 
                display += "<div class='level level-false level-#{i}'></div>"
                i += 1
            end
        end

        display += "</div>"

        return display.html_safe
    end
end
