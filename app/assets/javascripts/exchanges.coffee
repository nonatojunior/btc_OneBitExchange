$(document).ready ->
  $('.convert').on 'keyup change', ->
    $.ajax '/convert',
        type: 'POST'
        dataType: 'json'
        data: {
                source_currency: $("#source_currency").val(),
                target_currency: $("#target_currency").val(),
                amount: $("#amount").val()
              }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result').val(data.value)
      return false;

  $("#invert").click () ->
    source_currency = $("#source_currency").val()
    target_currency = $("#target_currency").val()
    
    $("#source_currency").val(target_currency)
    $("#target_currency").val(source_currency)

    $.ajax '/convert',
        type: 'POST'
        dataType: 'json'
        data: {
                source_currency: $("#source_currency").val(),
                target_currency: $("#target_currency").val(),
                amount: $("#amount").val()
              }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result').val(data.value)
      return false;