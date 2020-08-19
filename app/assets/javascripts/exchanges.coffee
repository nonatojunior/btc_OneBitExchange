$(document).ready ->
  $("#invert").click () ->
    $(".destination_currency").show()

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

  $("#bitcoin-invert").click () ->
    $(".destination_currency").hide()

    $.ajax '/convert_bitcoin',
        type: 'POST'
        dataType: 'json'
        data: {
                source_currency: $("#source_currency").val(),
                amount: $("#amount").val()
              }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result').val(data.value)
      return false;