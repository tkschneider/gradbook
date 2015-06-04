ready = ->
  $opportunities = $('.opportunity')

  # Show description on click
  $opportunities.click (event) ->
    return if $(event.target).is('a') # User probably clicked an action, abort
    event.preventDefault()

    clicked = this # Save reference to clicked opportunity
    $opportunities.each ->
      $opportunity = $(this)
      $opportunityDescription = $opportunity.find('.opportunity-description')

      shouldExpand = this is clicked && !$opportunity.hasClass('expanded')
      $opportunity.toggleClass('expanded', shouldExpand)
      if shouldExpand then $opportunityDescription.slideDown('fast') else $opportunityDescription.slideUp('fast')

$(document).ready ready
$(document).on 'page:load', ready
