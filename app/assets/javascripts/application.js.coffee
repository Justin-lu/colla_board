#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require_tree .

jQuery ($) ->
  $("a.nav-link").each ->
    unless window.location.pathname.indexOf($(@).attr("href")) is -1
      $(@).closest("li").addClass("active")
