# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
    $('.best_in_place').best_in_place()

$(document).ready ->
    $("#rechnung_netto,#rechnung_mwst,#rechnung_total").focusout ->
        id = $(this).attr('id')
        switch id
          when "rechnung_netto"
            netto = $(this).val()
            $("#rechnung_mwst").val(netto * 0.19)
            $("#rechnung_total").val(netto * 1.19)
          when "rechnung_mwst"
            mwst = $(this).val()
            $("#rechnung_netto").val(mwst / 19 * 100)
            $("#rechnung_total").val(mwst / 19 * 119)
          when "rechnung_total"
            total = $(this).val()
            $("#rechnung_netto").val(total / 119 * 100)
            $("#rechnung_mwst").val(total / 119 * 19)
