$("#client_area_id").empty().append("<%= escape_javascript(render @areas) %>").prepend("<option></option>")