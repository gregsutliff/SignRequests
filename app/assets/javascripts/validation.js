$(document).ready(function(){
	$("#requestForm").validate({
		rules: {
			"request[requester]": {required: true},
			"request[location]": {required: true},
			"request[sign_type]": {required: true},
			"request[description]": {required: true}
		}
	});
});