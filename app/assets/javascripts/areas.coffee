$ ->
  $(document).on 'change', '#user_job_province', (evt) ->
    $.ajax 'update_areas',
      type: 'GET'
      dataType: 'script'
      data: {
        province_id: $("#user_job_province option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Areas select OK!")

  $(document).on 'change', '#user_job_area', (evt) ->
    $.ajax 'update_cities',
      type: 'GET'
      dataType: 'script'
      data: {
        area_id: $("#user_job_area option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Cities select OK!")


$ ->
  $(document).on 'change', '#client_state', (evt) ->
    $.ajax 'update_areas',
      type: 'GET'
      dataType: 'script'
      data: {
Add a comment to this line
        province_id: $("#client_state option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Areas select OK!")

  $(document).on 'change', '#client_area', (evt) ->
    $.ajax 'update_cities',
      type: 'GET'
      dataType: 'script'
      data: {
        area_id: $("#client_area option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Cities select OK!")        