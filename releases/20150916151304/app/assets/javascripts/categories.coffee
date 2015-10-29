$(document).ready ->
  $('.panel-collapse').on('show.bs.collapse', ->
    $(this).parent().find('.glyphicon-menu-right').removeClass('glyphicon-menu-right').addClass 'glyphicon-menu-down'
    return
  ).on 'hide.bs.collapse', ->
    $(this).parent().find('.glyphicon-menu-down').removeClass('glyphicon-menu-down').addClass 'glyphicon-menu-right'
    return
  return
    
    