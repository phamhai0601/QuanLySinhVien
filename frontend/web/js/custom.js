$(document).on('click', '[data-toggle="loading"]:not(.disabled)', function() {
	var th           = $(this);
	var current_text = th.html();
	var count        = th.attr('data-loading-time');
	var text         = th.attr('data-loading-text');
	th.addClass('disabled');
	if(text !== '' && text !== undefined) {
		th.html('<i class="fa fa-spinner fa-spin"></i> ' + text + ' ' + count + 's');
	} else {
		th.html('<i class="fa fa-spinner fa-spin"></i> ' + count + 's');
	}
	var countInterval = setInterval(function() {
		if(count > 0) {
			count--;
			if(text !== '' && text !== undefined) {
				th.html('<i class="fa fa-spinner fa-spin"></i> ' + text + ' ' + count + 's');
			} else {
				th.html('<i class="fa fa-spinner fa-spin"></i> ' + count + 's');
			}
		} else {
			th.html(current_text);
			th.removeClass('disabled');
			clearInterval(countInterval);
		}
	}, 1000);
});