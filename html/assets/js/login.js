jQuery(document).ready(function() {

		$("#register").on("click", function(){
			window.location.href= "getotp.html"
		});

		$("#login").on("click", function(){
			var phone = $("#phone").val();
			var password = $("#password").val();
			
			if (phone == null || phone == "") {
				alert("phone number cannot be null");
				return false;
			}
			if (password == null || password == "") {
				alert("password cannot be null");
				return false;
			}
			
			$.ajax({
			    type: 'POST', 
			    contentType: "application/x-www-form-urlencoded",
			    url: 'http://localhost:8888/user/login', 
			    data:{
			    	"phone": phone,
			    	"password": password,
			    },
			    xhrFields: {withCredentials:true},
			    success: function(data) {
			    	if (data.status == "success") {
			    		alert("Successful Login!");
			    		window.location.href = "listitem.html";
			    	} else {
			    		alert("Login fails; Reason: " + data.data.errMsg);
			    	}
			    },
			    error: function(data) {
			    	alert("Login fails; Reason: " + data.responseText);
			    }
			});
			// return false;
		});
	})
