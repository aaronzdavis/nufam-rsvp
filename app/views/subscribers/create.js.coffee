$('input').val('')
$('.alert-success').fadeIn(500).delay(2000).hide(200)
$('.alert-success strong').text('Thanks <%= resource.name.split(' ').first %>!')