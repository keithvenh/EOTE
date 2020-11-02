module ApplicationHelper

    def translate(phrase, classNames)
        data = "<div class='translate #{classNames}'>"
        data += "<p class='sw'>#{phrase}</p>"
        data += "<p class='en'>#{phrase}</p>"
        data += "</div>"
        return data.html_safe

    end
end
