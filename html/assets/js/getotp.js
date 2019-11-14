jQuery(document).ready(function() {
	// When user clicks the "Get OTP Message" Button, request will be sent to the backend.
	$("#getotp").on("click", function(){
		var phone = $("#phone").val();
		if (phone == null || phone == "") {
			alert("phone number cannot be null");
			return false;
		}
		$.ajax({
				type: 'POST', 
				contentType: "application/x-www-form-urlencoded",
				url: 'http://localhost:8888/user/getotp', 
				data:{
					"phone": $("#phone").val(),
				},
				xhrFields: {withCredentials:true},
				success: function(data) {
					if (data.status == "success") {
						alert("OTP (" + data.data + ") has been sent to your phone. Please check");
						window.location.href="./register.html";
					} else {
						alert("failure: " + data.data.errMsg);
					}
				},
				error: function(data) {
					alert("failure: " + data.responseText);
				}
		});
		return false;
	});
})

