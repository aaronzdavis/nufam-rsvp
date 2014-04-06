$('input').val('')
$('form').fadeOut 400, ->
  $('.alert-success').fadeIn(500)
  $('.alert-success strong').text('Thanks <%= resource.name.split(' ').first %>!')