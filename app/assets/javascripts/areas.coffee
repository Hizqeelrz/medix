$ ->
  $(document).on 'change', '#user_province_id', (evt) ->
    $.ajax 'update_areas',
      type: 'GET'
      dataType: 'script'
      data: {
        province_id: $("#user_province_id option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Areas select OK!")

  $(document).on 'change', '#user_area_id', (evt) ->
    $.ajax 'update_cities',
      type: 'GET'
      dataType: 'script'
      data: {
        area_id: $("#user_area_id option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Cities select OK!")


$ ->
  $(document).on 'change', '#client_province_id', (evt) ->
    $.ajax 'update_areas',
      type: 'GET'
      dataType: 'script'
      data: {
Add a comment to this line
        province_id: $("#client_province_id option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Areas select OK!")

  $(document).on 'change', '#client_area_id', (evt) ->
    $.ajax 'update_cities',
      type: 'GET'
      dataType: 'script'
      data: {
        area_id: $("#client_area_id option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Cities select OK!")        