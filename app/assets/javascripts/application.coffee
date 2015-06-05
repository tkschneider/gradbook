# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https:#github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require foundation
#= require_tree .

ready = ->
  $(document).foundation()

  # Dismiss auto-close alerts
  $('[data-timeout]').each ->
    $timeout = $(this)
    setTimeout ->
      if $timeout.is('.alert-box') then $timeout.find("a.close").trigger("click.fndtn.alert") else $timeout.fadeOut()
    , $timeout.data('timeout') * 1000

  # Expandables
  $expandables = $('[data-expandable]')
  $expandables.click (event) ->
    unless $(event.target).is('a') # User probably clicked an action, abort
      event.preventDefault()

      clicked = this # Save reference to clicked expandable
      $expandables.each ->
        $expandable = $(this)
        $expand = $expandable.find('.expand')

        shouldExpand = this is clicked && !$expandable.hasClass('expanded')
        $expandable.toggleClass('expanded', shouldExpand)
        if shouldExpand then $expand.slideDown(200) else $expand.slideUp(200)

$(document).ready ready
$(document).on 'page:load', ready
